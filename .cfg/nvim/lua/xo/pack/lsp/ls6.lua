-- ls6.lua
-- Postgres Language Server
--
-- https://pg-language-server.com
--
-- Tooling expectation:
--   - postgres-language-server
--
-- Scope:
--   - SQL diagnostics
--   - schema-aware completions
--   - navigation for Postgres projects
--
-- Notes:
--   - workspace is required
--   - server will not attach without a root marker

vim.lsp.config("postgres_lsp", {
  cmd = { "postgres-language-server", "lsp-proxy" },
  filetypes = { "sql" },

  root_dir = function(bufnr)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    return vim.fs.root(fname, { "postgres-language-server.jsonc" })
  end,

  single_file_support = false,
})
