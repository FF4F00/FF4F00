-- p3.lua
-- Debug Adapter Protocol (nvim-dap)
--
-- Primary plugin:
--   - nvim-dap
--
-- Dependencies:
--   - nvim-dap-ui
--   - nvim-dap-python

--------------------------------------------------
-- Install plugins (builtin vim.pack)
--------------------------------------------------

vim.pack.add({
  "https://github.com/mfussenegger/nvim-dap.git",
  "https://github.com/rcarriga/nvim-dap-ui.git",
  "https://github.com/mfussenegger/nvim-dap-python.git",
})

--------------------------------------------------
-- Setup
--------------------------------------------------

-- nvim-dap itself does not require global setup here.
-- Configuration is handled in:
--   xo.pack.dap.dsN.lua
--
-- This file exists solely to:
--   - install the debugger plugins
--   - define the dependency boundary



