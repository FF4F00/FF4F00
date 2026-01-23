-- ls8.lua
-- Python Linting & Formatting (ruff)
--
-- https://github.com/astral-sh/ruff
--
-- Tooling expectation:
--   - ruff
--
-- Scope:
--   - lint diagnostics
--   - code actions
--   - formatting
--
-- Non-goals:
--   - type checking

vim.lsp.config("ruff", {
  cmd = { "ruff", "lsp" },
  filetypes = { "python" },

  root_dir = function(bufnr)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    return vim.fs.root(fname, { "pyproject.toml", "pixi.toml", ".git" })
  end,

  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = true
    client.server_capabilities.documentRangeFormattingProvider = true
  end,
})
