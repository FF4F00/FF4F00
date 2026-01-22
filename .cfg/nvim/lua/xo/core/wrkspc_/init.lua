-- xo.core.wrkspc_
-- Unified workspace chrome: statusline + tabline + timers + buffer workspaces
--
-- Mental model:
--   Tabs    = workspaces (index tabs)
--   Buffers = documents on that desk
--   Status  = desk ruler (context + time)

local M = {}
local api = vim.api

--------------------------------------------------
-- HELPERS
--------------------------------------------------

local function fixed(str, width)
  if width <= 0 then return tostring(str or "") end
  local s = tostring(str or "")
  local len = vim.fn.strdisplaywidth(s)

  if len <= width then
    return s .. string.rep(" ", width - len)
  end

  local out = ""
  for i = 0, vim.fn.strchars(s) - 1 do
    local c = vim.fn.strcharpart(s, i, 1)
    if vim.fn.strdisplaywidth(out .. c) > width then break end
    out = out .. c
  end

  return out .. string.rep(" ", width - vim.fn.strdisplaywidth(out))
end

local function create_timer(interval, cb)
  local t = vim.loop.new_timer()
  t:start(0, interval, vim.schedule_wrap(cb))
  return t
end

--------------------------------------------------
-- MODE
--------------------------------------------------

local mode_map = {
  n = "N  ", i = "I  ", v = "V  ", V = "V  ",
  ["\22"] = "V  ", c = "C  ", t = "T  ",
  R = "R  ", s = "S  ",
}

local function get_mode()
  return mode_map[vim.fn.mode()] or "?"
end

--------------------------------------------------
-- DIAGNOSTICS
--------------------------------------------------

local function get_diagnostics()
  local e = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local w = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })

  return fixed(" ✖ " .. string.format("%03d", e), 8)
       .. fixed(" ! " .. string.format("%03d", w), 8)
end

--------------------------------------------------
-- BUFFER INFO
--------------------------------------------------

local function get_buffer_info()
  local cur = vim.fn.bufnr("%")
  local total = #vim.fn.getbufinfo({ buflisted = 1 })
  return fixed(" " .. cur .. "/" .. total, 0)
end

--------------------------------------------------
-- POSITION / PERCENT
--------------------------------------------------

local function get_position()
  return fixed(string.format(" %04d:%04d", vim.fn.line("."), vim.fn.col(".")), 12)
end

local function get_percent()
  local total = vim.fn.line("$")
  if total == 0 then return fixed(" 000%", 7) end
  local p = math.floor((vim.fn.line(".") / total) * 100)
  return fixed(" " .. string.format("%03d", p) .. "%", 7)
end

--------------------------------------------------
-- CLOCK (theme proves AM/PM; clock only shows time)
--------------------------------------------------

local function get_clock()
  return fixed(" " .. os.date("%I:%M %p"), 0)
end

--------------------------------------------------
-- POMODORO
--------------------------------------------------

local pomodoro = {
  active = false,
  remaining = 25 * 60,
  end_time = 0,
  timer = nil,
}

local function toggle_pomodoro()
  if pomodoro.active then
    pomodoro.active = false
    pomodoro.remaining = math.max(0, pomodoro.end_time - os.time())
  else
    pomodoro.active = true
    pomodoro.end_time = os.time() + pomodoro.remaining
    if not pomodoro.timer then
      pomodoro.timer = create_timer(1000, function()
        vim.cmd("redrawstatus!")
      end)
    end
  end
  vim.cmd("redrawstatus!")
end

local function pomodoro_status()
  local r = pomodoro.active
    and math.max(0, pomodoro.end_time - os.time())
    or pomodoro.remaining

  return fixed(string.format("⌁ %02d:%02d ⌁", math.floor(r / 60), r % 60), 12)
end

--------------------------------------------------
-- TABLINE (workspace badge + buffer tabs)
--------------------------------------------------

local tab_colors = {
  "red_tab",
  "org_tab",
  "ylw_tab",
  "grn_tab",
  "cyn_tab",
  "blu_tab",
  "vlt_tab",
  "pnk_tab",
}

local devicons_ok, devicons = pcall(require, "nvim-web-devicons")

local function current_workspace()
  return vim.g.current_workspace or "IO"
end

local function is_valid_workspace(value)
  return value == "IO" or value == "UI"
end

local function get_workspace_buffers(ws)
  local bufs = {}
  for _, buf in ipairs(api.nvim_list_bufs()) do
    if api.nvim_buf_is_valid(buf) and vim.bo[buf].buflisted then
      if vim.b[buf].workspace == ws then
        table.insert(bufs, buf)
      end
    end
  end
  return bufs
end

local function save_last_buffer()
  local ws = current_workspace()
  local buf = api.nvim_get_current_buf()
  if api.nvim_buf_is_valid(buf) and vim.bo[buf].buflisted then
    vim.g["workspace_last_buf_" .. ws] = buf
  end
end

local function restore_last_buffer(ws)
  local last = vim.g["workspace_last_buf_" .. ws]
  if last and api.nvim_buf_is_valid(last) and vim.bo[last].buflisted and vim.b[last].workspace == ws then
    api.nvim_set_current_buf(last)
    return
  end
  local bufs = get_workspace_buffers(ws)
  if #bufs > 0 then
    api.nvim_set_current_buf(bufs[1])
    return
  end
  vim.cmd("enew")
  local newbuf = api.nvim_get_current_buf()
  vim.b[newbuf].workspace = ws
end

local function redraw_chrome()
  vim.cmd("redrawtabline")
  vim.cmd("redrawstatus!")
end

local function switch_workspace_to(ws)
  if not is_valid_workspace(ws) then return end
  if current_workspace() == ws then return end
  save_last_buffer()
  vim.g.current_workspace = ws
  restore_last_buffer(ws)
  redraw_chrome()
end

local function ensure_buffer_workspace(bufnr)
  if not vim.api.nvim_buf_is_valid(bufnr) then return end
  if not vim.bo[bufnr].buflisted then return end
  if not is_valid_workspace(vim.b[bufnr].workspace) then
    vim.b[bufnr].workspace = current_workspace()
  end
end

local function buffer_label(bufnr)
  local bufname = api.nvim_buf_get_name(bufnr)
  local name = vim.fn.fnamemodify(bufname, ":t")
  if name == "" then return " [No Name] " end
  if devicons_ok then
    local ext = vim.fn.fnamemodify(bufname, ":e")
    local icon = devicons.get_icon(name, ext)
    if icon then
      return " " .. icon .. " " .. name .. " "
    end
  end
  return " " .. name .. " "
end

local function buffer_tab(bufnr, idx, is_current)
  local hl = is_current and "TabLineFill"
    or tab_colors[(idx - 1) % #tab_colors + 1]
  local click = string.format("%%%d@v:lua.require'xo.core.wrkspc_'.on_buf_click@", bufnr)
  local close = string.format("%%%d@v:lua.require'xo.core.wrkspc_'.on_buf_close@", bufnr)
  local label = buffer_label(bufnr)

  return table.concat({
    "%#",
    hl,
    "#",
    click,
    label,
    "%X",
    "%#WrkspcClose#",
    close,
    "x",
    "%X",
    " ",
  })
end

local function workspace_badge()
  local ws = current_workspace()
  return table.concat({
    "%#WrkspcBadge#",
    "%@v:lua.require'xo.core.wrkspc_'.toggle_workspace@",
    " ",
    ws,
    " ",
    "%X",
    "%#TabLineFill#",
    " ",
  })
end

local function get_tabline()
  local line = ""
  local active = api.nvim_get_current_buf()
  local bufs = api.nvim_list_bufs()
  local idx = 0

  for _, buf in ipairs(bufs) do
    if api.nvim_buf_is_valid(buf) and vim.bo[buf].buflisted then
      ensure_buffer_workspace(buf)
      if vim.b[buf].workspace == current_workspace() then
        idx = idx + 1
        line = line .. buffer_tab(buf, idx, buf == active)
      end
    end
  end

  line = line .. "%=" .. workspace_badge() .. "%#TabLineFill#"
  return line
end

--------------------------------------------------
-- AUTOCMDS (buffer workspace assignment)
--------------------------------------------------

api.nvim_create_autocmd({ "BufAdd", "BufNewFile", "BufEnter" }, {
  callback = function(args)
    ensure_buffer_workspace(args.buf)
  end,
})

--------------------------------------------------
-- SETUP
--------------------------------------------------

function M.setup()
  vim.o.showmode = false
  vim.o.laststatus = 3
  vim.opt.showtabline = 2
  if not is_valid_workspace(vim.g.current_workspace) then
    vim.g.current_workspace = "IO"
  end

  api.nvim_set_hl(0, "WrkspcBadge", { link = "TabLineSel" })
  api.nvim_set_hl(0, "WrkspcClose", { link = "Error" })

  vim.opt.statusline = table.concat({
    "%{v:lua.require'xo.core.wrkspc_'.mode()}",
    "%{v:lua.require'xo.core.wrkspc_'.pos()}",
    "%{v:lua.require'xo.core.wrkspc_'.pct()}",
    "%{v:lua.require'xo.core.wrkspc_'.buf()}",
    "%=%{v:lua.require'xo.core.wrkspc_'.pomo()}%=",
    "%{v:lua.require'xo.core.wrkspc_'.diag()}",
    "%{v:lua.require'xo.core.wrkspc_'.clock()}",
  })

  vim.opt.tabline = "%!v:lua.require'xo.core.wrkspc_'.tabline()"

  vim.keymap.set("n", "<leader>t", toggle_pomodoro)

  create_timer(1000, function()
    vim.cmd("redrawstatus!")
  end)

  api.nvim_create_user_command("WorkspaceIO", function() M.switch_to_io() end, {})
  api.nvim_create_user_command("WorkspaceUI", function() M.switch_to_ui() end, {})
  api.nvim_create_user_command("WorkspaceToggle", function() M.toggle_workspace() end, {})
  api.nvim_create_user_command("WorkspaceCloseAll", function() M.close_all() end, {})
  api.nvim_create_user_command("IOCloseAll", function() M.close_io() end, {})
  api.nvim_create_user_command("UICloseAll", function() M.close_ui() end, {})
  api.nvim_create_user_command("UIIOCloseAll", function() M.close_all_workspaces() end, {})
end

--------------------------------------------------
-- PUBLIC API
--------------------------------------------------

function M.mode()    return get_mode() end
function M.diag()    return get_diagnostics() end
function M.buf()     return get_buffer_info() end
function M.pos()     return get_position() end
function M.pct()     return get_percent() end
function M.clock()   return get_clock() end
function M.pomo()    return pomodoro_status() end
function M.tabline() return get_tabline() end
function M.toggle_workspace()
  local next_ws = current_workspace() == "IO" and "UI" or "IO"
  switch_workspace_to(next_ws)
end

function M.switch_to_io()
  switch_workspace_to("IO")
end

function M.switch_to_ui()
  switch_workspace_to("UI")
end

function M.on_buf_click(minwid)
  if api.nvim_buf_is_valid(minwid) then
    api.nvim_set_current_buf(minwid)
  end
end

function M.on_buf_close(minwid)
  if api.nvim_buf_is_valid(minwid) then
    vim.cmd("bd " .. minwid)
  end
end

local function close_workspace_buffers(ws)
  local bufs = get_workspace_buffers(ws)
  local current = api.nvim_get_current_buf()
  local closed_current = false
  for _, buf in ipairs(bufs) do
    if buf == current then
      closed_current = true
    else
      pcall(vim.cmd, "bd " .. buf)
    end
  end
  if closed_current then
    local remaining = get_workspace_buffers(ws)
    if #remaining == 1 then
      vim.cmd("enew")
      vim.b[api.nvim_get_current_buf()].workspace = ws
    end
    pcall(vim.cmd, "bd " .. current)
  end
  if #api.nvim_list_bufs() == 0 or #vim.fn.getbufinfo({ buflisted = 1 }) == 0 then
    vim.cmd("enew")
    vim.b[api.nvim_get_current_buf()].workspace = current_workspace()
  end
  redraw_chrome()
end

function M.close_all()
  close_workspace_buffers(current_workspace())
end

function M.close_io()
  close_workspace_buffers("IO")
end

function M.close_ui()
  close_workspace_buffers("UI")
end

function M.close_all_workspaces()
  close_workspace_buffers("IO")
  close_workspace_buffers("UI")
end

return M
