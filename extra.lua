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
  "highlight BadWhitespace guibg=Red
  match BadWhitespace /^\t\+/
  match BadWhitespace /\s\+\%#\@<!$/
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

  " Lyc song lyric text format
  au BufNewFile,BufRead *.lyc set ft=lyc

  " Jump to the last position when reopening a file
  au BufReadPost * if &ft != 'lyc' | if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif | endif

  " Split screen into two columns for viewing lyrics
  noremap <silent>gg :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>j

  " Quickly quit all windows
  map Q :qa<CR>

  " Always use system clipboard (via '~/build/wl-clipboard/' arch package)
  set clipboard+=unnamedplus

  " Do not insert comments automatically on newline
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
]], false)
