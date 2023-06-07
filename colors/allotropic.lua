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

-- ~=~ Cursor crosshairs
hi("ColorColumn", { bg = "#222233" })
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

hi("DiagnosticError", { fg = "#dd1a1a" })
hi("ErrorMsg", { bg = "#444444", bold = true, fg = "Yellow" })
hi("SignColumn", { bg = "Black" })
hi("Visual", { bg = "#444444" })

hi("Todo", { fg = "Blue", bg = "Yellow" })

-- ~=~ Colors
local Attribute = { fg = "Red" }
local Comment = { fg = "#a4c8ff" }
local Constant = { fg = "#ffa4dd" }
local CrateRoot = { fg = "#ecd9db" }
local Error = { fg = "#ffffff", bg = "Magenta" }
local Delimiter = { fg = "Orange", bold = true }
local Enum = { fg = "#f900a4", bold = true }
local Function = { fg = "#00afff" }
local Identifier = { fg = "#40ffff", bold = true }
local Namespace = { fg = "#cc99fb" }
local Parameter = { fg = "#88ccff" }
local PreProc = { fg = "#ff80ff" }
local Statement = { fg = "#ffff60", bold = true }
local Structure = { fg = "#c952ff", bold = true }
local Title = { fg = "Magenta", bold = true }
local Trait = { fg = "#f955a4", bold = true }
local Type = { fg = "#70ef70" }
local TypeAlias = { fg = "#b868d8" }
local Variable = { fg = "#ff8800" }

hi("Comment", Comment)
hi("Constant", Constant)
hi("Delimiter", Delimiter)
hi("Error", Error)
hi("ErrorMsg", Error)
hi("Identifier", Identifier)
hi("Float", { link = "Constant" })
hi("Function", Function)
hi("Keyword", Statement)
hi("Operator", Statement)
hi("String", { link = "Constant" })
hi("Structure", Structure)
hi("Title", Title)
hi("Type", Type)

hi("@boolean", { link = "Constant" })
hi("@comment", { link = "Comment" })
hi("@constant", { link = "Constant" })
hi("@field", { link = "Identifier" })
hi("@float", { link = "Float" })
hi("@function", { link = "Function" })
hi("@keyword", { link = "Keyword" })
hi("@namespace", Namespace)
hi("@operator", { link = "Operator" })
hi("@parameter", Parameter)
hi("@preproc", PreProc)
hi("@punctuation", { link = "Delimiter" })
hi("@string", { link = "String" })
hi("@type", { link = "Type" })
hi("@variable", Variable)

-- ~=~ Rust
hi("@boolean.rust", { link = "@boolean" })
hi("@comment.rust", { link = "@comment" })
hi("@constant.builtin.rust", { link = "@constant" })
hi("@constant.rust", { link = "@constant" })
hi("@field.rust", { link = "@field" })
hi("@float.rust", { link = "@float" })
hi("@function.macro.rust", { link = "@preproc" })
hi("@function.rust", { link = "@function" })
hi("@include.rust", { link = "@preproc" })
hi("@keyword.rust", { link = "@keyword" })
hi("@namespace.rust", { link = "@namespace" })
hi("@operator.rust", { link = "@operator" })
hi("@parameter.rust", { link = "@parameter" })
hi("@punctuation.bracket.rust", { link = "@punctuation" })
hi("@punctuation.delimiter.rust", { link = "@punctuation" })
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
hi("@lsp.type.interface.rust", Trait)
hi("@lsp.type.lifetime.rust", { link = "Type" })
hi("@lsp.type.macro.rust", PreProc)
hi("@lsp.type.method.rust", { link = "@function.rust" })
hi("@lsp.type.namespace.rust", { link = "@namespace.rust" })
hi("@lsp.type.parameter.rust", { link = "@parameter.rust" })
hi("@lsp.type.property.rust", { link = "Identifier" })
hi("@lsp.type.struct.rust", { link = "Structure" })
hi("@lsp.type.typeAlias.rust", TypeAlias)
hi("@lsp.type.typeParameter.rust", { link = "@lsp.type.parameter.rust" })
hi("@lsp.type.variable.rust", { link = "@variable.rust" })
hi("@lsp.typemod.attributeBracket.attribute.rust", { link = "Delimiter" })
hi("@lsp.typemod.builtinAttribute.attribute.rust", { link = "Function" })
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
--})

--[[
Conceal		Placeholder characters substituted for concealed
CurSearch	Used for highlighting a search pattern under the cursor
Cursor		Character under the cursor.
lCursor		Character under the cursor when language-mapping
CursorIM	Like Cursor, but used when in IME mode. CursorIM
CursorColumn	Screen-column at the cursor, when 'cursorcolumn' is set.
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

PmenuKind	Popup menu: Normal item "kind".
PmenuKindSel	Popup menu: Selected item "kind".
PmenuExtra	Popup menu: Normal item "extra text".
PmenuExtraSel	Popup menu: Selected item "extra text".

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
WarningMsg	Warning messages.
Whitespace	"nbsp", "space", "tab", "multispace", "lead" and "trail"
WildMenu	Current match in 'wildmenu' completion.
WinBar		Window bar of current window.
WinBarNC	Window bar of not-current windows.
]]
