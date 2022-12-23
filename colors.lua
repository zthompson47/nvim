-- Hilight the row the cursor is on and highlight a column for maximum code per line.
vim.api.nvim_exec(
[[
  hi ColorColumn ctermbg=DarkGrey guibg=#222233
  hi CursorLine term=none cterm=none ctermbg=DarkGrey guibg=#1b1b2b
  hi CursorLineNr term=none cterm=none ctermbg=DarkGrey guifg=#9999AA
]], false)

-- Make split screens monotone with thin-line borders.
vim.api.nvim_exec(
[[
  hi VertSplit ctermbg=DarkGrey ctermfg=Black guifg=#000000 guibg=#555555
  hi StatusLine cterm=underline ctermbg=Black ctermfg=Grey guifg=#888888 guibg=#000000
  hi StatusLineNC cterm=underline ctermbg=Black ctermfg=Grey guifg=#888888 guibg=#000000
  hi User1 cterm=underline ctermbg=Black ctermfg=Grey gui=underline guifg=#888888 guibg=#000000
]], false)

vim.api.nvim_exec(
[[
highlight Pmenu ctermbg=DarkGray guibg=#222222
highlight SignColumn guibg=Black

"    Pmenu – normal item
"    PmenuSel – selected item
"    PmenuSbar – scrollbar
"    PmenuThumb – thumb of the scrollbar

hi LspDiagnosticsDefaultError guifg=#ff00ff ctermfg=Yellow cterm=italic gui=italic
hi LspDiagnosticsDefaultWarning guifg=Yellow ctermfg=Yellow cterm=italic gui=italic
hi LspDiagnosticsDefaultInformation guifg=White ctermfg=White cterm=italic gui=italic
hi LspDiagnosticsDefaultHint guifg=White ctermfg=White cterm=italic gui=italic

hi LspReferenceText guifg=#00ff00 ctermfg=Yellow guibg=#222200 gui=underline,italic
hi LspReferenceRead guifg=#ffff00 ctermfg=Red guibg=#222200 gui=underline,italic
hi LspReferenceWrite guifg=#00ffff ctermfg=Green guibg=#222200 gui=underline,italic

hi LspDiagnosticsVirtualTextError guifg=#ff00ff ctermfg=Yellow
hi LspDiagnosticsVirtualTextWarning guifg=Yellow ctermfg=Yellow
hi LspDiagnosticsVirtualTextInformation guifg=White ctermfg=White
"hi LspDiagnosticsVirtualTextHint guifg=White ctermfg=White
hi LspDiagnosticsVirtualTextHint guifg=Blue ctermfg=Blue

hi LspDiagnosticsUnderlineError guifg=NONE ctermfg=NONE cterm=italic gui=italic
hi LspDiagnosticsUnderlineWarning guifg=NONE ctermfg=NONE cterm=italic gui=italic
hi LspDiagnosticsUnderlineInformation guifg=NONE ctermfg=NONE cterm=italic gui=italic
hi LspDiagnosticsUnderlineHint guifg=NONE ctermfg=NONE cterm=italic gui=italic




hi DiagnosticUnderlineError cterm=NONE gui=italic guisp=Red
hi DiagnosticUnderlineWarn cterm=NONE gui=italic guisp=Orange
hi DiagnosticUnderlineInfo cterm=NONE gui=italic guisp=LightBlue
hi DiagnosticUnderlineHint cterm=NONE gui=italic guisp=LightGrey














]], false)
