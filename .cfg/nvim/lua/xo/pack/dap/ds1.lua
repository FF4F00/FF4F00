-- ds1.lua
-- Python Debug Adapter (debugpy)
--
-- https://github.com/microsoft/debugpy
-- https://github.com/mfussenegger/nvim-dap-python
--
-- Tooling expectation (managed externally, e.g. via pixi):
--   - debugpy
--
-- Scope:
--   - interactive debugging
--   - breakpoints
--   - step / continue / inspect
--
-- Non-goals:
--   - test runners
--   - profiling
--   - multi-language debugging

local dap = require("dap")
local dap_python = require("dap-python")

-- Path resolution:
-- Prefer system / pixi Python; user is responsible for correctness
dap_python.setup("python")

-- Basic adapter sanity (explicit, no magic)
dap.configurations.python = dap.configurations.python or {
  {
    type = "python",
    request = "launch",
    name = "Launch current file",
    program = "${file}",
    console = "integratedTerminal",
  },
}