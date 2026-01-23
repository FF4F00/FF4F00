-- ls7.lua
-- Python Type Checking (pyright)
--
-- https://github.com/microsoft/pyright
--
-- Tooling expectation:
--   - pyright-langserver
--
-- Scope:
--   - type checking
--   - semantic analysis
--   - navigation
--
-- Non-goals:
--   - formatting
--   - linting

vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },

  root_dir = function(bufnr)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    return vim.fs.root(fname, { "pyproject.toml", "pixi.toml", ".git" })
  end,

  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
})
