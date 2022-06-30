package.path = package.path .. ";/home/zach/.config/nvim/?.lua"

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

-- Commands missing or broken or ? from lua api
vim.api.nvim_exec(
[[
  set colorcolumn=101
]], false)

require "plugins/plug"

require "colors"
require "statusline"
require "mappings"
require "extra"
