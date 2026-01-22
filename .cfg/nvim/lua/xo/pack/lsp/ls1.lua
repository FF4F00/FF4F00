-- ls1.lua
-- Elm Language Server (elmls)
--
-- https://github.com/elm-tooling/elm-language-server
--
-- Tooling expectation (managed externally):
--   - elm
--   - elm-format
--   - elm-test
--   - elm-language-server (npm)
--
-- Scope:
--   - diagnostics
--   - navigation
--   - editor assistance for Elm source files
--
-- Non-goals:
--   - formatting ownership outside elm-format
--   - multi-root inference beyond elm.json

local api = vim.api

vim.lsp.config("elmls", {
  cmd = { "elm-language-server" },
  filetypes = { "elm" },

  root_dir = function(bufnr)
    local fname = api.nvim_buf_get_name(bufnr)
    return vim.fs.root(fname, "elm.json")
  end,

  init_options = {
    elmReviewDiagnostics = "off",
    skipInstallPackageConfirmation = false,
    disableElmLSDiagnostics = false,
    onlyUpdateDiagnosticsOnSave = false,
  },

  capabilities = { offsetEncoding = { "utf-8", "utf-16" } },
})
