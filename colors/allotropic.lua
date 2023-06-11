local function hi(name, val)
    return vim.api.nvim_set_hl(0, name, val)
end

vim.cmd.hi("clear")
vim.g.colors_name = "allotropic"
vim.o.background = "dark"
vim.o.termguicolors = true

hi("Normal", { fg = "White", bg = "Black" })
hi("NormalFloat", { link = "Normal" })
hi("NormalNC", { link = "Normal" })

hi("BadWhitespace", { bg = "Red" })

-- ~=~ Cursor crosshairs
hi("ColorColumn", { bg = "#222233" })
hi("CursorColumn", { bg = "#111116" })
hi("CursorLine", { bg = "#1b1b2b" })
hi("CursorLineNr", { bg = "#1b1b2b" })

-- ~=~ Split screen borders
hi("VertSplit", { fg = "#555555", bg = "#000000" })
hi("StatusLine", { fg = "#000000", bg = "#555555" })
hi("StatusLineNC", { fg = "#000000", bg = "#555555" })

-- ~=~ Popup menus
hi("Pmenu", { bg = "#222222" })
hi("PmenuSel", { bg = "#444444", bold = true, fg = "Yellow" })
hi("PmenuThumb", { bg = "#004400" })
hi("PmenuSbar", { bg = "#664400" })
--PmenuKind	Popup menu: Normal item "kind".
--PmenuKindSel	Popup menu: Selected item "kind".
--PmenuExtra	Popup menu: Normal item "extra text".
--PmenuExtraSel	Popup menu: Selected item "extra text".

hi("EndOfBuffer", { fg = "Magenta" })
hi("ErrorMsg", { bg = "#444444", bold = true, fg = "Yellow" })
hi("SignColumn", { bg = "Black" })
hi("Todo", { fg = "Blue", bg = "Yellow" })
hi("Visual", { bg = "#444444", bold = true })

-- ~=~ Ruler highlighting
hi("User1", { fg = "#ff9988" })
hi("User2", { fg = "#eedd66" })
hi("User3", { fg = "#aaaaff" })

-- ~=~ Colors
local Attribute = { fg = "#aaaaaa" }
local Bracket = { fg = "#cccccc" }
local Cfg = { fg = "#aaaae8" }
local Comment = { fg = "#a4c8ff" }
local Constant = { fg = "#ffa4dd" }
local CrateRoot = { fg = "#ecd9db" }
local Error = { fg = "#ffff66", bg = "#660000" }
--local Delimiter = { fg = "Orange" }
local Delimiter = { fg = "#ffeecc" }
local DocComment = { fg = "Orange" }
--local Enum = { fg = "#f900a4" }
local Enum = { fg = "#ffff00" }
--local Field = { fg = "#00cc00" }
--local Field = { fg = "#00dddd" }
local FormatSpecifier = { fg = "#aaaaaa" }
local Function = { fg = "#00afff" }
local Identifier = { fg = "#40ffff" }
local Namespace = { fg = "#cc99fb" }
local Parameter = { fg = "#88ccff" }
local PreProc = { fg = "#ff80ff" }
local Property = { fg = "#ffaa66" }
local Field = Property
local Statement = { fg = "#ffff60" }
--local Structure = { fg = "#c952ff" }
--local Structure = { fg = "#ffaa00" }
local Structure = { fg = "#ff8800" }
local Title = { fg = "Magenta" }
--local Trait = { fg = "#f955a4" }
local Trait = { fg = "#00ffff" }
--local Type = { fg = "#70ef70" }
--local Type = { fg = "#30ff4f" }
local Type = { fg = "#b9f2ff" }
local TypeAlias = { fg = "#cccccc" }
--local Variable = { fg = "#ff8800" }
--local Variable = { fg = "#40efff" }
--local Variable = { fg = "#10ef2f" }
local Variable = { fg = "#08df28" }

hi("Boolean", Constant)
--Character
hi("Comment", Comment)
-- Conditional
hi("Constant", Constant)
--hi("Cursor", { bg = "Orange", fg = "White", bold = true })
--Define
hi("Delimiter", Delimiter)
hi("DiagnosticError", { fg = "#ff4700" })
hi("Error", Error)
hi("ErrorMsg", Error)
hi("Float", { link = "Constant" })
hi("Function", Function)
hi("Identifier", Identifier)
--Include
hi("Keyword", Statement)
--Label
--Macro
--Number
hi("Operator", Statement)
hi("Property", Property)
--PrecCondit
--Special
--SpecialComment
--StorageClass
hi("String", { link = "Constant" })
hi("Structure", Structure)
hi("Title", Title)
hi("Type", Type)
--WarningMsg	Warning messages.

hi("@boolean", { link = "Boolean" })
hi("@comment", { link = "Comment" })
hi("@constant", { link = "Constant" })
hi("@field", Field)
hi("@float", { link = "Float" })
hi("@function", { link = "Function" })
hi("@keyword", { link = "Keyword" })
hi("@namespace", Namespace)
hi("@operator", { link = "Operator" })
hi("@parameter", Parameter)
hi("@preproc", PreProc)
hi("@property", Property)
hi("@punctuation", { link = "Delimiter" })
hi("@string", { link = "String" })
hi("@type", { link = "Type" })
hi("@variable", Variable)

-- ~=~ Rust
hi("@boolean.rust", { link = "@boolean" })
hi("@comment.rust", { link = "@comment" })
hi("@comment.documentation.rust", DocComment)
hi("@constant.builtin.rust", { link = "@constant" })
hi("@constant.rust", { link = "@constant" })
hi("@field.rust", { link = "@field" }) -- {})
hi("@float.rust", { link = "@float" })
hi("@function.macro.rust", { link = "@preproc" })
hi("@function.rust", { link = "@function" })
hi("@include.rust", { link = "@preproc" })
hi("@keyword.rust", { link = "@keyword" })
hi("@namespace.rust", { link = "@namespace" })
hi("@operator.rust", { link = "@operator" })
hi("@parameter.rust", { link = "@parameter" })
hi("@property.rust", { link = "@property" })
hi("@punctuation.bracket.rust", Bracket)
hi("@punctuation.delimiter.rust", { link = "Delimeter" })
hi("@storageclass.lifetime.rust", { link = "@type" })
hi("@storageclass.rust", { link = "@type" })
hi("@string.rust", { link = "@string" })
hi("@text.title.rust", { link = "Title" })
hi("@type.builtin.rust", { link = "@type" })
hi("@type.qualifier.rust", { link = "@type" })
hi("@type.rust", { link = "@type" })
hi("@variable.rust", { link = "@variable" })

hi("@lsp.mod.attribute.rust", Attribute)
hi("@lsp.mod.constant.rust", { link = "@constant.rust" })
hi("@lsp.mod.crateRoot.rust", CrateRoot)
hi("@lsp.type.builtinType.rust", { link = "@type.builtin.rust" })
hi("@lsp.type.decorator.rust", { link = "Identifier" })
hi("@lsp.type.derive.rust", { link = "Type" })
hi("@lsp.type.enum.rust", Enum)
hi("@lsp.type.enumMember.rust", { link = "@constant.rust" })
hi("@lsp.type.formatSpecifier.rust", FormatSpecifier)
hi("@lsp.type.interface.rust", Trait)
hi("@lsp.type.lifetime.rust", { link = "Type" })
hi("@lsp.type.macro.rust", PreProc)
hi("@lsp.type.method.rust", { link = "@function.rust" })
hi("@lsp.type.namespace.rust", { link = "@namespace.rust" })
hi("@lsp.type.parameter.rust", { link = "@parameter.rust" })
hi("@lsp.type.property.rust", {}) -- { link = "@property.rust" })
hi("@lsp.type.struct.rust", { link = "Structure" })
hi("@lsp.type.typeAlias.rust", TypeAlias)
hi("@lsp.type.typeParameter.rust", { link = "@lsp.type.parameter.rust" })
hi("@lsp.type.variable.rust", { link = "@variable.rust" })
hi("@lsp.typemod.attributeBracket.attribute.rust", Cfg)
hi("@lsp.typemod.builtinAttribute.attribute.rust", Cfg)
hi("@lsp.typemod.comment.documentation.rust", { link = "@comment.documentation.rust" })
hi("@lsp.typemod.function.public.rust", { link = "@function.rust" })

-- ~=~ Lua
hi("@field.lua", { link = "@field" })
hi("@function.call.lua", { link = "@function" })

hi("@lsp.type.variable.lua", { link = "@variable" })
hi("@lsp.type.function.lua", { link = "@function.call.lua" })
hi("@lsp.type.property.lua", { link = "@field.lua" })

-- ~=~ Lsp
hi("LspDiagnosticsDefaultError", { link = "Error" })
hi("LspDiagnosticsDefaultWarning", { fg = "Yellow", italic = true })
hi("LspDiagnosticsDefaultInformation", { fg = "White", italic = true })
hi("LspDiagnosticsDefaultHint", { fg = "White", italic = true })

hi("LspDiagnosticsUnderlineError", { italic = true })
hi("LspDiagnosticsUnderlineWarning", { italic = true })
hi("LspDiagnosticsUnderlineInformation", { italic = true })
hi("LspDiagnosticsUnderlineHint", { italic = true })

hi("LspDiagnosticsVirtualTextError", { link = "Error" })
hi("LspDiagnosticsVirtualTextWarning", { fg = "Yellow" })
hi("LspDiagnosticsVirtualTextInformation", { fg = "White" })
hi("LspDiagnosticsVirtualTextHint", { fg = "Blue" })

hi("LspInfoList", { link = "Function" })
hi("LspInfoTip", { link = "Comment" })
hi("LspInfoTitle", { link = "Variable" })
hi("LspInfoFiletype", { link = "Type" })
hi("LspInfoBorder", { link = "Label" })

hi("LspReferenceText", { fg = "#00ff00", bg = "#222200", italic = true, underline = true })
hi("LspReferenceRead", { fg = "#ffff00", bg = "#222200", italic = true, underline = true })
hi("LspReferenceWrite", { fg = "#00ffff", bg = "#222200", italic = true, underline = true })

vim.api.nvim_create_autocmd("LspTokenUpdate", {
    callback = function(args)
        local token = args.data.token
        local function hl(name)
            return vim.lsp.semantic_tokens.highlight_token(
                token, args.buf, args.data.client_id, name
            )
        end

        if token.type == "namespace" and token.modifiers.crateRoot then
            hl("@lsp.mod.crateRoot.rust")
        elseif token.type == "namespace" then
            hl("@lsp.type.namespace.rust")
        end
    end,
})

--vim.api.nvim_create_autocmd("LspProgressUpdate", {
--    callback = function()
--    end
--})

--[[
Conceal		Placeholder characters substituted for concealed
CurSearch	Used for highlighting a search pattern under the cursor
lCursor		Character under the cursor when language-mapping
CursorIM	Like Cursor, but used when in IME mode. CursorIM
Directory	Directory names (and other special names in listings).
DiffAdd		Diff mode: Added line. diff.txt
DiffChange	Diff mode: Changed line. diff.txt
DiffDelete	Diff mode: Deleted line. diff.txt
DiffText	Diff mode: Changed text within a changed line. diff.txt
EndOfBuffer	Filler lines (~) after the end of the buffer.
TermCursor	Cursor in a focused terminal.
TermCursorNC	Cursor in an unfocused terminal.
WinSeparator	Separators between window splits.
Folded		Line used for closed folds.
FoldColumn	'foldcolumn'
IncSearch	'incsearch' highlighting; also used for the text replaced with
Substitute	:substitute replacement text highlighting.
LineNr		Line number for ":number" and ":#" commands, and when 'number'
LineNrAbove	Line number for when the 'relativenumber'
LineNrBelow	Line number for when the 'relativenumber'
CursorLineFold	Like FoldColumn when 'cursorline' is set for the cursor line.
CursorLineSign	Like SignColumn when 'cursorline' is set for the cursor line.
MatchParen	Character under the cursor or just before it, if it
ModeMsg		'showmode' message (e.g., "-- INSERT --").
MsgArea		Area for messages and cmdline.
MsgSeparator	Separator for scrolled messages msgsep.
MoreMsg		more-prompt
NonText		'@' at the end of the window, characters from 'showbreak'
FloatBorder	Border of floating windows.
FloatTitle	Title of floating windows.

Question	hit-enter prompt and yes/no questions.
QuickFixLine	Current quickfix item in the quickfix window. Combined with
Search		Last search pattern highlighting (see 'hlsearch').
SpecialKey	Unprintable characters: Text displayed differently from what

SpellBad	Word that is not recognized by the spellchecker. spell
SpellCap	Word that should start with a capital. spell
SpellLocal	Word that is recognized by the spellchecker as one that is
SpellRare	Word that is recognized by the spellchecker as one that is

TabLine		Tab pages line, not active tab page label.
TabLineFill	Tab pages line, where there are no labels.
TabLineSel	Tab pages line, active tab page label.
VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
Whitespace	"nbsp", "space", "tab", "multispace", "lead" and "trail"
WildMenu	Current match in 'wildmenu' completion.
WinBar		Window bar of current window.
WinBarNC	Window bar of not-current windows.
]]
