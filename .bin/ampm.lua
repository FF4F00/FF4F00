
-- Name:         am:pm
-- Description:  Purely functional color scheme.
-- Author:       Yusef Nso <cirqol.com/yusefnso>
-- Maintainer:   FF4F00 <https://github.com/ff4f00/ampm>
-- Website:      https://ff4f00.io/ampm
-- License:      MIT
-- Last Updated: 2025 Nov 05


vim.opt.background = "light"
vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "am:pm"

local function hi(group, fg, bg, attr)
  local opts = {}

  if fg and fg.gui ~= "NONE" then
    opts.fg = fg.gui
  end
  if bg and bg.gui ~= "NONE" then
    opts.bg = bg.gui
  end
  if attr and attr ~= "" and attr ~= "none" then
    opts[attr] = true
  end

  vim.api.nvim_set_hl(0, group, opts)
end

local s = {}

s.am  = { gui = "#faf9f8", cterm256 = "231" }
s.pm  = { gui = "#000000", cterm256 = "16"  }

s.clr = { gui = "NONE",    cterm256 = "NONE"}
s.blk = { gui = "#484848", cterm256 = "235" }
s.gry = { gui = "#C6C6C6", cterm256 = "250" }
s.wht = { gui = "#EFECE9", cterm256 = "255" }

s.red = { gui = "#DC2103", cterm256 = "196" }
s.org = { gui = "#FF4F00", cterm256 = "202" }
s.ylw = { gui = "#FBC124", cterm256 = "220" }
s.grn = { gui = "#CEFF00", cterm256 = "154" }
s.blu = { gui = "#007BFF", cterm256 = "33"  }
s.cyn = { gui = "#00FF8B", cterm256 = "48"  }


-- CORE
hi("Conceal",              s.blk, s.clr, none)
hi("ColorColumn",          s.blk, s.clr, none)
hi("Directory",            s.blk, s.clr, none)
hi("EndOfBuffer",          s.blk, s.clr, none)
hi("ModeMsg",              s.blk, s.clr, none)
hi("MsgSeparator",         s.blk, s.clr, none)
hi("NonText",              s.blk, s.clr, none)
hi("Normal",               s.blk, s.clr, none)
hi("SignColumn",           s.blk, s.clr, none)
hi("Whitespace",           s.blk, s.clr, none)
hi("Visual",               s.blk, s.ylw, "bold")
hi("VertSplit",            s.blk, s.clr, none)
                           
-- COMPLETION              
hi("ComplMatchIns",        s.blk, s.clr, none)
hi("ComplHint",            s.blk, s.clr, none)
hi("ComplHintMore",        s.blk, s.clr, none)
hi("PreInsert",            s.blk, s.clr, none)
                           
-- CURSOR                  
hi("Cursor",               s.blk, s.blk, none)
hi("lCursor",              s.blk, s.blk, none)
hi("CursorColumn",         s.blk, s.blk, none)
hi("CursorLine",           s.blk, s.wht, "bold")
hi("CursorLineNr",         s.blk, s.clr, none)
hi("CursorLineSign",       s.blk, s.clr, none)
hi("CursorLineFold",       s.blk, s.clr, none)
hi("TermCursor",           s.blk, s.clr, none)

-- DIFF
hi("DiffText",             s.blk, s.clr, none)
hi("DiffTextAdd",          s.blk, s.clr, none)

-- ERROR
hi("Error",                s.blk, s.clr, none)
hi("ErrorMsg",             s.blk, s.clr, none)
hi("RedrawDebugNormal",    s.blk, s.clr, none)
hi("RedrawDebugClear",     s.blk, s.clr, none)
hi("RedrawDebugComposed",  s.blk, s.clr, none)
hi("RedrawDebugRecompose", s.blk, s.clr, none)
hi("Todo",                 s.blk, s.clr, none)

-- FOLDS
hi("FoldColumn",           s.blk, s.clr, none)
hi("Folded",               s.blk, s.clr, none)

-- FLOATS
hi("FloatBorder",          s.blk, s.clr, none)
hi("FloatTitle",           s.blk, s.clr, none)
hi("FloatFooter",          s.blk, s.clr, none)
hi("FloatShadow",          s.blk, s.clr, none)
hi("FloatShadowThrough",   s.blk, s.clr, none)
hi("NormalFloat",          s.blk, s.clr, none)

-- LINE NUMBERS
hi("LineNr",               s.blk, s.clr, none)
hi("LineNrAbove",          s.blk, s.clr, none)
hi("LineNrBelow",          s.blk, s.clr, none)
hi("QuickFixLine",         s.blk, s.clr, none)

-- MENUS
hi("Pmenu",                s.blk, s.clr, none)
hi("PmenuSbar",            s.blk, s.clr, none)
hi("PmenuSel",             s.blk, s.clr, none)
hi("PmenuKind",            s.blk, s.clr, none)
hi("PmenuKindSel",         s.blk, s.clr, none)
hi("PmenuMatch",           s.blk, s.clr, none)
hi("PmenuMatchSel",        s.blk, s.clr, none)
hi("PmenuExtra",           s.blk, s.clr, none)
hi("PmenuExtraSel",        s.blk, s.clr, none)
hi("WildMenu",             s.blk, s.clr, none)

-- SEARCH
hi("Search",               s.blk, s.clr, none)
hi("IncSearch",            s.blk, s.clr, none)
hi("CurSearch",            s.blk, s.clr, none)
hi("MatchParen",           s.blk, s.clr, none)
hi("Substitute",           s.blk, s.clr, none)

-- STATUS
hi("StatusLine",           s.blk, s.clr, none)
hi("StatusLineNC",         s.blk, s.clr, none)

-- TABS
hi("TabLineFill",          s.clr, s.clr, none)
hi("TabLineSel",           s.blk, s.clr, "bold")

-- WINDOWS
hi("WinBar",               s.blk, s.clr, none)
hi("WinSeparator",         s.blk, s.clr, none)
hi("WinBarNC",             s.blk, s.clr, none)

hi("Comment",              s.blu, s.clr, none)
hi("Constant",             s.blk, s.clr, none)
hi("String",               s.blk, s.clr, none)
hi("Character",            s.blk, s.clr, none)
hi("Number",               s.blk, s.clr, none)
hi("Boolean",              s.blk, s.clr, none)
hi("Float",                s.blk, s.clr, none)
hi("Identifier",           s.blk, s.clr, none)
hi("Function",             s.blk, s.clr, none)
hi("Statement",            s.blk, s.clr, none)
hi("Conditional",          s.blk, s.clr, none)
hi("Repeat",               s.blk, s.clr, none)
hi("Label",                s.blk, s.clr, none)
hi("Operator",             s.blk, s.clr, none)
hi("Keyword",              s.blk, s.clr, none)
hi("Exception",            s.blk, s.clr, none)
hi("PreProc",              s.blk, s.clr, none)
hi("Include",              s.blk, s.clr, none)
hi("Define",               s.blk, s.clr, none)
hi("Macro",                s.blk, s.clr, none)
hi("Type",                 s.blk, s.clr, none)
hi("StorageClass",         s.blk, s.clr, none)
hi("Structure",            s.blk, s.clr, none)
hi("Typedef",              s.blk, s.clr, none)
hi("Special",              s.blk, s.clr, none)
hi("SpecialChar",          s.blk, s.clr, none)
hi("Tag",                  s.blk, s.clr, none)
hi("Delimiter",            s.blk, s.clr, "bold")
hi("SpecialComment",       s.blk, s.clr, none)
hi("Underlined",           s.blk, s.clr, none)
hi("Ignore",               s.blk, s.clr, none)
hi("Error",                s.blk, s.clr, none)
hi("Todo",                 s.blk, s.clr, none)

hi("DiagnosticError",      s.blk, s.clr, none)
hi("DiagnosticWarn",       s.blk, s.clr, none)
hi("DiagnosticInfo",       s.blk, s.clr, none)
hi("DiagnosticHint",       s.blk, s.clr, none)

hi("LspReferenceText",     s.blk, s.clr, none)
hi("LspReferenceRead",     s.blk, s.clr, none)
hi("LspReferenceWrite",    s.blk, s.clr, none)

hi("LspInlayHint",         s.blk, s.clr, none)

hi("@variable",            s.blk, s.clr, none)
hi("@variable.builtin",    s.blk, s.clr, none)
hi("@constant",            s.blk, s.clr, none)
hi("@function",            s.blk, s.clr, none)
hi("@function.builtin",    s.blk, s.clr, none)
hi("@keyword",             s.blk, s.clr, none)
hi("@string",              s.blk, s.clr, none)
hi("@number",              s.blk, s.clr, none)
hi("@boolean",             s.blk, s.clr, none)
hi("@type",                s.blk, s.clr, none)
hi("@field",               s.blk, s.clr, none)
hi("@property",            s.blk, s.clr, none)
hi("@punctuation",         s.blk, s.clr, none)
hi("@comment",             s.blk, s.clr, none)

hi("Title",                s.blk, s.clr, none)
hi("Bold",                 s.blk, s.clr, none)
hi("Italic",               s.clr, s.clr, none)
hi("Underlined",           s.blk, s.clr, none)
hi("CursorLineNr",         s.blk, s.clr, none)
hi("WinBar",               s.blk, s.clr, none)
hi("WinBarNC",             s.blk, s.clr, none)

return true
