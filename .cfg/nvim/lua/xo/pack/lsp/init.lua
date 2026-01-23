-- LSP ingress
-- Slot execution + server activation are paired explicitly.
-- Slots are architectural; server names are Neovim’s contract.

require("xo.pack.lsp.ls1"); vim.lsp.enable("elmls")
require("xo.pack.lsp.ls2"); vim.lsp.enable("texlab")
require("xo.pack.lsp.ls3"); vim.lsp.enable("lua_ls")
require("xo.pack.lsp.ls4"); vim.lsp.enable("mojo")
require("xo.pack.lsp.ls5"); vim.lsp.enable("nixd")
require("xo.pack.lsp.ls6"); vim.lsp.enable("postgres_lsp")
require("xo.pack.lsp.ls7"); vim.lsp.enable("pyright")
require("xo.pack.lsp.ls8"); vim.lsp.enable("ruff")
require("xo.pack.lsp.ls9"); -- vim.lsp.enable(" ")


