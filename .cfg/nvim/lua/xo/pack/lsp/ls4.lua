-- ls4.lua
-- Mojo Language Server
--
-- https://github.com/modularml/mojo
--
-- Tooling expectation:
--   - mojo-lsp-server (installed via Modular)
--
-- Scope:
--   - diagnostics
--   - navigation
--   - semantic assistance for Mojo
--
-- Notes:
--   - Mojo tooling is still evolving
--   - configuration intentionally minimal

vim.lsp.config("mojo", {
  cmd = { "mojo-lsp-server" },
  filetypes = { "mojo" },

  root_dir = function(bufnr)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    return vim.fs.root(fname, { ".git" })
  end,
})
