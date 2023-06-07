-- Hilight the row the cursor is on and highlight a column for maximum code per line.
vim.api.nvim_exec(
[[
  hi ColorColumn ctermbg=DarkGrey guibg=#222233
  hi CursorLine term=none cterm=none ctermbg=DarkGrey guibg=#1b1b2b
  hi CursorLineNr term=none cterm=none ctermbg=DarkGrey guifg=#9999AA
]], false)

-- Terminal cursor colors
vim.api.nvim_exec(
[[
  ":hi Cursor guifg=#ffa500 guibg=#ffa500
  ":hi Cursor2 guifg=red guibg=red
  ":set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
]], false)

-- Make split screens monotone with thin-line borders.
vim.api.nvim_exec(
[[
  hi VertSplit guifg=#555555 guibg=#000000
  hi StatusLine guifg=#000000 guibg=#555555
  hi StatusLineNC guifg=#000000 guibg=#555555

  "hi VertSplit ctermbg=DarkGrey ctermfg=Black guifg=#000000 guibg=#555555
  "hi StatusLine cterm=underline ctermbg=Black ctermfg=Grey guifg=#888888 guibg=#000000
  "hi StatusLineNC cterm=underline ctermbg=Black ctermfg=Grey guifg=#888888 guibg=#000000
  "hi User1 cterm=underline ctermbg=Black ctermfg=Grey gui=underline guifg=#888888 guibg=#000000
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

" For rust-analyzer.highlightRelated
"autocmd CursorHold  <buffer> lua vim.lsp.buf.document_highlight()
"autocmd CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()
"autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
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

"hi DiagnosticUnderlineError cterm=NONE gui=italic guisp=Red
"hi DiagnosticUnderlineWarn cterm=NONE gui=italic guisp=Orange
"hi DiagnosticUnderlineInfo cterm=NONE gui=italic guisp=LightBlue
"hi DiagnosticUnderlineHint cterm=NONE gui=italic guisp=LightGrey

""hi DiagnosticUnderlineError gui=underline guisp=DarkGrey
""hi DiagnosticUnderlineWarn gui=underline guisp=DarkGrey
""hi DiagnosticUnderlineInfo gui=underline guisp=DarkGrey
""hi DiagnosticUnderlineHint gui=underline guisp=DarkGrey
hi DiagnosticUnderlineError gui=italic guisp=DarkGrey
hi DiagnosticUnderlineWarn gui=italic guisp=DarkGrey
hi DiagnosticUnderlineInfo gui=italic guisp=DarkGrey
hi DiagnosticUnderlineHint gui=italic guisp=DarkGrey

]], false)
