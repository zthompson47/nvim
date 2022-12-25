package.path = package.path .. ";/home/zach/.config/nvim/?.lua"

vim.api.nvim_exec(
[[
  let g:loaded_python_provider = 0
  let g:loaded_python3_provider = 0
  let g:loaded_ruby_provider = 0
  let g:loaded_node_provider = 0
  let g:loaded_perl_provider = 0
]], false)

vim.g.mapleader = " "

local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- Global options
o.autochdir = true -- might break plugins: ':h autochdir'
--o.laststatus = 0 -- Status bar on split screen only, now set below..
o.matchtime = 2
o.ruler = true
o.showmatch = true
o.signcolumn = 'number'
o.swapfile = false
o.termguicolors = true
o.title = true
o.titlestring = "%t %F"
o.updatetime = 500

-- Window-local options
-- vim.wo.colorcolumn = 101 -- doesn't work, exec'd below..
wo.cursorline = true
wo.number = true
wo.relativenumber = true
wo.scrolloff = 1
wo.wrap = false

-- Buffer-local options
bo.expandtab = true
bo.matchpairs = "(:),{:},[:],<:>"
bo.shiftwidth = 4
bo.softtabstop = 4
bo.tabstop = 4

-- Commands missing or broken or ? from lua api
vim.api.nvim_exec(
[[

  set colorcolumn=101
  set mouse=nvi
  :map <ScrollWheelUp> 2<C-Y>
  :map <ScrollWheelDown> 2<C-E>

  set laststatus=0
  "hi! link StatusLine Normal
  "hi! link StatusLineNC Normal
  set statusline=%{repeat('─',winwidth('.'))}

]], false)

require "plug"
require "colors"
--require "statusline"
require "mappings"
require "extra"
