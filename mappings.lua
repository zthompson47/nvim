vim.api.nvim_exec(
[[
  inoremap jj <ESC>
  inoremap zk <ESC>:w<CR>
  nnoremap zk :w<CR>
]], false)
