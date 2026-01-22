vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one


-- Enable line wrapping
-- opt.wrap = false
opt.wrap = true


-- Prevent horizontal scrolling
opt.sidescroll = 0
opt.sidescrolloff = 0

-- Optional: visually wrap at word boundaries (not mid-word)
opt.linebreak = true
opt.breakindent = true



-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "light" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
vim.cmd("colorscheme ampm")

vim.opt.colorcolumn = "96"
vim.o.showtabline = 2  -- always show tabline


-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false


vim.opt.guicursor = {
  "n-v-c:block",       -- normal/visual/command = block
  "i-ci:ver25",        -- insert/command-insert = thick vertical bar (55%)
  "r-cr:hor20",        -- replace modes = horizontal bar (20%)
}


vim.opt.guicursor = {
  "n-v-c:block-blinkon500-blinkoff500",  -- normal, visual, command = blinking block
  "i-ci:ver35-blinkon500-blinkoff500",  -- insert, command-insert = blinking bar (35% width)
  "r-cr:hor20-blinkon500-blinkoff500",  -- replace modes = blinking underline
}

-- Define a helper to change cursor color by mode
local function set_cursor_color(fg, bg)
  vim.api.nvim_set_hl(0, "Cursor", { fg = fg, bg = bg })
end

-- Start with normal mode color
set_cursor_color("#000000", "#ffffff") -- black text on white background

-- Auto-change cursor color when switching modes
vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*",
  callback = function()
    local mode = vim.fn.mode()
    if mode:match("v") then
      -- Visual mode → black cursor
      set_cursor_color("#ffffff", "#000000")
    else
      -- All other modes → white cursor
      set_cursor_color("#000000", "#ffffff")
    end
  end,
})
