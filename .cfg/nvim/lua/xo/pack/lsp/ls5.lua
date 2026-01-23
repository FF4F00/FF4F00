-- ls5.lua
-- Nix Language Server (nixd)
--
-- https://github.com/nix-community/nixd
--
-- Tooling expectation:
--   - nixd
--
-- Scope:
--   - Nix expressions
--   - Flake-aware navigation
--   - Infrastructure-as-code assistance

vim.lsp.config("nixd", {
  cmd = { "nixd" },
  filetypes = { "nix" },

  root_dir = function(bufnr)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    return vim.fs.root(fname, { "flake.nix", ".git" })
  end,
})
