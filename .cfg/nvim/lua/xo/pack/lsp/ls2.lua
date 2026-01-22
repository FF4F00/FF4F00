-- ls2.lua
-- LaTeX Language Server (texlab)
--
-- https://github.com/latex-lsp/texlab
--
-- Tooling expectation:
--   - texlab
--   - latexmk or equivalent
--
-- Scope:
--   - LaTeX diagnostics
--   - build-on-save
--   - forward search integration
--
-- Notes:
--   - PDF viewer configuration is system-dependent
--   - evince-synctex is a Linux example

vim.lsp.config("texlab", {
  filetypes = { "tex", "plaintex", "bib" },

  root_dir = function(bufnr)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    return vim.fs.root(fname, { ".latexmkrc", "texlab.toml", ".git" })
  end,

  settings = {
    texlab = {
      build = {
        onSave = true,
        args = {
          "-pdf",
          "-interaction=nonstopmode",
          "-synctex=1",
          "%f",
          "-auxdir=build",
        },
      },

      forwardSearch = {
        executable = "evince-synctex",
        args = { "-f", "%l", "%p" },
      },
    },
  },
})
