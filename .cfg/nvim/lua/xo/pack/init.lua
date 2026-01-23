

-- pN : pN.lua               | require & .setup()

-- p1 : plenary              | deps: none
-- p2 : lspconfig            | deps: mason-lspconfig, mason
-- p3 : nvim-dap             | deps: nvim-dap-ui, nvim-dap-python
-- p4 : snacks               | deps: mini.icons, nvim-web-devicons
-- p5 : supermaven           | deps: none
-- p6 : neoscroll            | deps: none
-- p7 : comment              | deps: none
-- p8 : render-markdown.nvim | deps: mini.icons, nvim-web-devicons, nvim-treesitter
-- p9 : empty slot           | 

require("xo.pack.p1") 
require("xo.pack.p2") 
require("xo.pack.p3") 
require("xo.pack.p4") 
require("xo.pack.p5") 
require("xo.pack.p6") 
require("xo.pack.p7") 
require("xo.pack.p8") 
require("xo.pack.p9") 

-- LSP
-- require("xo.pack.lsp")        -- loads lua/io/pack/lsp/init.lua

-- DAP 
-- require("xo.pack.dap")        -- loads lua/io/pack/dap/init.lua




