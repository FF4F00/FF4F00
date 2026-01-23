-- p2.lua
-- nvim-lspconfig
--
-- Primary: builtin vim.pack + manual server wiring
-- Optional (commented): Mason as an escape hatch for users who prefer it

--------------------------------------------------
-- Plugin install (builtin vim.pack)
--------------------------------------------------

vim.pack.add({"https://github.com/neovim/nvim-lspconfig.git"})

--------------------------------------------------
-- Optional Mason escape hatch (DISABLED BY DEFAULT)
--------------------------------------------------
-- Uncomment ONLY if you want automatic LSP/DAP installation.
-- This is intentionally not enabled to preserve a manual-first workflow.

-- vim.pack.add({
--   "williamboman/mason.nvim",
--   "williamboman/mason-lspconfig.nvim",
-- })

--------------------------------------------------
-- Setup
--------------------------------------------------

-- lspconfig itself does not require global setup here.
-- Actual server configuration lives in:
--   xo.pack.lsp.*
--
-- This file exists solely to:
--   1. Install the plugin
--   2. Define the supported escape hatch
--   3. Keep ingress explicit and auditable