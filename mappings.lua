vim.api.nvim_exec(
[[
  inoremap jj <ESC>
  inoremap zk <ESC>:w<CR>
  nnoremap zk :w<CR>
  nnoremap z. :LspStart<CR>
  nnoremap z, :LspStop<CR>
]], false)
