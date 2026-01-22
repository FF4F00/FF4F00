vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim.git" })
vim.pack.add({ "https://github.com/mason-org/mason.nvim" })


-- Plenary has no setup() function; just load it.
require("plenary")

require("mason").setup({
  ui = {
    border = "rounded",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
