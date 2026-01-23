vim.pack.add({"https://github.com/nvim-tree/nvim-web-devicons.git"})
vim.pack.add({"https://github.com/folke/snacks.nvim.git"})

require("nvim-web-devicons").setup()

-- Configure Snacks
require("snacks").setup({
  bigfile      = { enabled = true },
  dashboard    = { enabled = false },
  explorer     = { enabled = true },
  indent       = { enabled = true },
  input        = { enabled = true },
  notifier     = {
    enabled = true,
    timeout = 3000,
  },
  picker       = { enabled = true },
  quickfile    = { enabled = true },
  scope        = { enabled = true },
  scroll       = { enabled = true },
  statuscolumn = { enabled = true },
  words        = { enabled = true },
  styles       = {
    notification = {
      -- wo = { wrap = true } -- Wrap notifications
    },
  },
})

-- Keymaps
local map = vim.keymap.set
local Snacks = require("snacks")

-- Top Pickers & Explorer
map("n", "<leader><space>", function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
map("n", "<leader>,",       function() Snacks.picker.buffers() end, { desc = "Buffers" })
map("n", "<leader>/",       function() Snacks.picker.grep() end, { desc = "Grep" })
map("n", "<leader>:",       function() Snacks.picker.command_history() end, { desc = "Command History" })
map("n", "<leader>n",       function() Snacks.picker.notifications() end, { desc = "Notification History" })
map("n", "<leader>e",       function() Snacks.explorer() end, { desc = "File Explorer" })

-- Find
map("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Buffers" })
map("n", "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, { desc = "Find Config File" })
map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
map("n", "<leader>fg", function() Snacks.picker.git_files() end, { desc = "Find Git Files" })
map("n", "<leader>fp", function() Snacks.picker.projects() end, { desc = "Projects" })
map("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Recent" })

-- Git
map("n", "<leader>gb", function() Snacks.picker.git_branches() end, { desc = "Git Branches" })
map("n", "<leader>gl", function() Snacks.picker.git_log() end, { desc = "Git Log" })
map("n", "<leader>gL", function() Snacks.picker.git_log_line() end, { desc = "Git Log Line" })
map("n", "<leader>gs", function() Snacks.picker.git_status() end, { desc = "Git Status" })
map("n", "<leader>gS", function() Snacks.picker.git_stash() end, { desc = "Git Stash" })
map("n", "<leader>gd", function() Snacks.picker.git_diff() end, { desc = "Git Diff (Hunks)" })
map("n", "<leader>gf", function() Snacks.picker.git_log_file() end, { desc = "Git Log File" })

-- GitHub
map("n", "<leader>gi", function() Snacks.picker.gh_issue() end, { desc = "GitHub Issues (open)" })
map("n", "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, { desc = "GitHub Issues (all)" })
map("n", "<leader>gp", function() Snacks.picker.gh_pr() end, { desc = "GitHub Pull Requests (open)" })
map("n", "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, { desc = "GitHub Pull Requests (all)" })

-- Search
map("n", "<leader>sb", function() Snacks.picker.lines() end, { desc = "Buffer Lines" })
map("n", "<leader>sB", function() Snacks.picker.grep_buffers() end, { desc = "Grep Open Buffers" })
map("n", "<leader>sg", function() Snacks.picker.grep() end, { desc = "Grep" })
map({ "n", "x" }, "<leader>sw", function() Snacks.picker.grep_word() end, { desc = "Visual selection or word" })
map("n", "<leader>sh", function() Snacks.picker.help() end, { desc = "Help Pages" })
map("n", "<leader>uC", function() Snacks.picker.colorschemes() end, { desc = "Colorschemes" })

-- LSP
map("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definition" })
map("n", "gr", function() Snacks.picker.lsp_references() end, { desc = "References", nowait = true })

-- Misc
map("n", "<leader>z", function() Snacks.zen() end, { desc = "Toggle Zen Mode" })
map("n", "<leader>Z", function() Snacks.zen.zoom() end, { desc = "Toggle Zoom" })
map("n", "<leader>.", function() Snacks.scratch() end, { desc = "Toggle Scratch Buffer" })
map("n", "<leader>n", function() Snacks.notifier.show_history() end, { desc = "Notification History" })
map("n", "<leader>bd", function() Snacks.bufdelete() end, { desc = "Delete Buffer" })
map("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Lazygit" })
map("n", "<leader>un", function() Snacks.notifier.hide() end, { desc = "Dismiss All Notifications" })
map("n", "<c-/>", function() Snacks.terminal() end, { desc = "Toggle Terminal" })

-- Init behavior (formerly "init" in lazy spec)
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    _G.dd = function(...) Snacks.debug.inspect(...) end
    _G.bt = function() Snacks.debug.backtrace() end

    if vim.fn.has("nvim-0.11") == 1 then
      vim._print = function(_, ...) dd(...) end
    else
      vim.print = _G.dd
    end

    Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
    Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
    Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
    Snacks.toggle.diagnostics():map("<leader>ud")
    Snacks.toggle.line_number():map("<leader>ul")
    Snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map("<leader>uc")
    Snacks.toggle.treesitter():map("<leader>uT")
    Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
    Snacks.toggle.inlay_hints():map("<leader>uh")
    Snacks.toggle.indent():map("<leader>ug")
    Snacks.toggle.dim():map("<leader>uD")
  end,
})
