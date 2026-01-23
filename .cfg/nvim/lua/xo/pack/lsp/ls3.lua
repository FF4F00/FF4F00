-- ls3.lua
-- Lua Language Server (LuaLS)
--
-- https://github.com/LuaLS/lua-language-server
--
-- Tooling expectation:
--   - lua-language-server
--
-- Scope:
--   - Lua diagnostics
--   - Neovim API awareness
--   - workspace navigation
--
-- Non-goals:
--   - opinionated formatting
--   - third-party telemetry

vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },

  root_dir = function(bufnr)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    return vim.fs.root(fname, { ".luarc.json", ".luarc.jsonc", ".git" })
  end,

  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
        path = vim.split(package.path, ";"),
      },

      diagnostics = {
        globals = { "vim" },
      },

      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.stdpath("config") .. "/lua",
        },
        checkThirdParty = false,
      },

      telemetry = {
        enable = false,
      },
    },
  },
})
