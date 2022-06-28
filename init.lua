vim.api.nvim_exec(
[[
  let g:loaded_python_provider = 0
  let g:loaded_python3_provider = 0
  let g:loaded_ruby_provider = 0
  let g:loaded_node_provider = 0
  let g:loaded_perl_provider = 0
]], false)

-- Global options
vim.o.autochdir = true -- might break plugins: ':h autochdir'
vim.o.laststatus = 0 -- Status bar on split screen only
vim.o.matchtime = 2
vim.o.ruler = true
vim.o.showmatch = true
vim.o.signcolumn = 'number'
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.title = true
vim.o.titlestring = "%t %F"

-- Window-local options
-- vim.wo.colorcolumn = 101 -- doesn't work, exec'd below..
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.scrolloff = 1

-- Buffer-local options
vim.bo.expandtab = true
vim.bo.matchpairs = "(:),{:},[:],<:>"
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 8

-- Highlight colors
vim.api.nvim_exec(
[[
  hi ColorColumn ctermbg=DarkGrey guibg=#222233
  hi CursorLine term=none cterm=none ctermbg=DarkGrey guibg=#1b1b2b
  hi CursorLineNr term=none cterm=none ctermbg=DarkGrey guifg=#9999AA
]], false)

-- Commands missing or broken or ? from lua api
vim.api.nvim_exec(
[[
  set colorcolumn=101
]], false)

package.path = package.path .. ";/home/zach/.config/nvim/?.lua"
--print(package.path)
require "statusline"
require "mappings"
require "plugins"

-- Auto-toggle line numbers so unfocus and insert have normal numbering.
-- https://jeffkreeftmeijer.com/vim-number/
vim.api.nvim_exec(
[[
  :augroup numbertoggle
  :  autocmd!
  :  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  :  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  :augroup END
  " Get back to normal line numbers sometimes.
  nnoremap <silent> <space>l <cmd>set norelativenumber<CR>
]], false)

-- Expose lines ending with extra whitespace.
vim.api.nvim_exec(
[[
  highlight BadWhitespace guibg=Red
  match BadWhitespace /^\t\+/
  match BadWhitespace /\s\+\%#\@<!$/
]], false)

-- Make split screens monotone with thin-line borders.
vim.api.nvim_exec(
[[
  hi VertSplit ctermbg=DarkGrey ctermfg=Black guifg=#000000 guibg=#555555
  hi StatusLine cterm=underline ctermbg=Black ctermfg=Grey guifg=#888888 guibg=#000000
  hi StatusLineNC cterm=underline ctermbg=Black ctermfg=Grey guifg=#888888 guibg=#000000
  hi User1 cterm=underline ctermbg=Black ctermfg=Grey gui=underline guifg=#888888 guibg=#000000
]], false)

-- Retain split screen navigation in :terminal.
vim.api.nvim_exec(
[[
  tnoremap <C-w>h <C-\><C-n><C-w>h
  tnoremap <C-w>j <C-\><C-n><C-w>j
  tnoremap <C-w>k <C-\><C-n><C-w>k
  tnoremap <C-w>l <C-\><C-n><C-w>l
]], false)

-- Odds and ends
vim.api.nvim_exec(
[[
  " Jump to the last position when reopening a file
  au BufReadPost * if &ft != 'lyc' | if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif | endif
  
  " Split screen into two columns for viewing lyrics
  noremap <silent>gg :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>j
  
  " Quickly quit all windows
  map Q :qa<CR>
  
  " Always use system clipboard (via 'xclip' arch package)
  set clipboard+=unnamedplus
  
  " Do not insert comments automatically on newline
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]], false)
