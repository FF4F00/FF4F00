-- xo.core.wrk_.btm
-- Bottom workspace chrome (statusline + timers)

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
-- CLOCK (theme proves AM/PM)
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
-- SETUP
--------------------------------------------------

function M.setup()
  vim.o.showmode = false
  vim.o.laststatus = 3

  vim.opt.statusline = table.concat({
    "%{v:lua.require'xo.core.wrk_.btm'.mode()}",
    "%{v:lua.require'xo.core.wrk_.btm'.pos()}",
    "%{v:lua.require'xo.core.wrk_.btm'.pct()}",
    "%{v:lua.require'xo.core.wrk_.btm'.buf()}",
    "%=%{v:lua.require'xo.core.wrk_.btm'.pomo()}%=",
    "%{v:lua.require'xo.core.wrk_.btm'.diag()}",
    "%{v:lua.require'xo.core.wrk_.btm'.clock()}",
  })

  vim.keymap.set("n", "<leader>t", toggle_pomodoro)

  create_timer(1000, function()
    vim.cmd("redrawstatus!")
  end)
end

--------------------------------------------------
-- PUBLIC API
--------------------------------------------------

function M.mode()  return get_mode() end
function M.diag()  return get_diagnostics() end
function M.buf()   return get_buffer_info() end
function M.pos()   return get_position() end
function M.pct()   return get_percent() end
function M.clock() return get_clock() end
function M.pomo()  return pomodoro_status() end

return M
