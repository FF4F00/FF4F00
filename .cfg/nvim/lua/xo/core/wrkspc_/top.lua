-- xo.core.wrk_.top
-- Top workspace chrome (tabline + buffer workspaces)

local M = {}
local api = vim.api

--------------------------------------------------
-- TABLINE (office-style index tabs)
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

local function format_tab(tabpage, is_current, idx)
  local win = api.nvim_tabpage_get_win(tabpage)
  local buf = api.nvim_win_get_buf(win)

  local name = vim.fn.fnamemodify(api.nvim_buf_get_name(buf), ":t")
  if name == "" then name = "[No Name]" end

  local hl = is_current
    and "TabLineFill"
    or tab_colors[(idx - 1) % #tab_colors + 1]

  return string.format("%%#%s#  %s  ", hl, name)
end

local function get_tabline()
  local line = ""
  local tabs = api.nvim_list_tabpages()
  local current = api.nvim_get_current_tabpage()
  local inactive_idx = 0

  for _, tab in ipairs(tabs) do
    local is_current = (tab == current)
    if not is_current then inactive_idx = inactive_idx + 1 end
    line = line .. format_tab(tab, is_current, inactive_idx)
  end

  return line .. "%#TabLineFill#"
end

--------------------------------------------------
-- BUFFER WORKSPACE (per-tab)
--------------------------------------------------

local function ensure_bufs()
  vim.t.bufs = vim.t.bufs
    or vim.tbl_filter(api.nvim_buf_is_valid, api.nvim_list_bufs())
end

local function buf_index(bufnr)
  ensure_bufs()
  for i, b in ipairs(vim.t.bufs) do
    if b == bufnr then return i end
  end
end

function M.next_buf()
  ensure_bufs()
  local i = buf_index(api.nvim_get_current_buf())
  if not i then return end
  api.nvim_set_current_buf(vim.t.bufs[i % #vim.t.bufs + 1])
end

function M.prev_buf()
  ensure_bufs()
  local i = buf_index(api.nvim_get_current_buf())
  if not i then return end
  api.nvim_set_current_buf(vim.t.bufs[i == 1 and #vim.t.bufs or i - 1])
end

function M.close_buf(bufnr)
  bufnr = bufnr or api.nvim_get_current_buf()
  ensure_bufs()

  local i = buf_index(bufnr)
  if i and #vim.t.bufs > 1 then
    api.nvim_set_current_buf(vim.t.bufs[i == #vim.t.bufs and i - 1 or i + 1])
  end

  vim.cmd("confirm bd " .. bufnr)
end

--------------------------------------------------
-- AUTOCMDS (buffer workspace sync)
--------------------------------------------------

api.nvim_create_autocmd({ "BufAdd", "BufEnter" }, {
  callback = function(args)
    ensure_bufs()
    if vim.bo[args.buf].buflisted and not vim.tbl_contains(vim.t.bufs, args.buf) then
      table.insert(vim.t.bufs, args.buf)
    end
  end,
})

api.nvim_create_autocmd("BufDelete", {
  callback = function(args)
    for _, tab in ipairs(api.nvim_list_tabpages()) do
      local bufs = vim.t[tab].bufs
      if bufs then
        for i, b in ipairs(bufs) do
          if b == args.buf then
            table.remove(bufs, i)
            vim.t[tab].bufs = bufs
            break
          end
        end
      end
    end
  end,
})

--------------------------------------------------
-- SETUP
--------------------------------------------------

function M.setup()
  vim.opt.showtabline = 2
  vim.opt.tabline = "%!v:lua.require'xo.core.wrk_.top'.tabline()"

  vim.keymap.set("n", "]b", M.next_buf)
  vim.keymap.set("n", "[b", M.prev_buf)
  vim.keymap.set("n", "<leader>bd", M.close_buf)
end

--------------------------------------------------
-- PUBLIC API
--------------------------------------------------

function M.tabline() return get_tabline() end

return M
