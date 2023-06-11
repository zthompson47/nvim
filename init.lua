package.path = package.path .. ";/home/zach/.config/nvim/?.lua"

-- Global variables
vim.g.loaded_python_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.mapleader = " "

-- General settings
vim.o.autochdir = true -- might break plugins: ':h autochdir'
vim.o.matchtime = 2
vim.o.ruler = true
vim.o.showmatch = true
vim.o.signcolumn = 'number'
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.title = true
vim.o.titlestring = "%t %F"
vim.o.updatetime = 500

-- Window-scoped options
vim.wo.cursorcolumn = true
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.scrolloff = 2
vim.wo.wrap = false

-- Buffer-scoped options
vim.bo.expandtab = true
vim.bo.matchpairs = "(:),{:},[:],<:>"
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.tabstop = 4

-- Set options
--vim.cmd[[set cmdheight=0]]
vim.opt.cmdheight = 0
vim.opt.colorcolumn = "101"
vim.opt.mouse = "nvi"
vim.opt.laststatus = 0
--vim.opt.rulerformat = "%65(%B %t %l/%v %p%%%{LspStatus()}%)"
vim.opt.rulerformat = "%50(%30F %l/%v %p%%%)"
-- TODO set shortmess to prevent having to hit Enter with <ctl-g>
vim.opt.statusline = "%{repeat('─',winwidth('.'))}"

--vim.opt.statusline = "%!LspStatus()"

-- Mouse scrolling
vim.cmd.map("<ScrollWheelUp> 2<C-Y>")
vim.cmd.map("<ScrollWheelDown> 2<C-E>")
vim.cmd.map("<S-ScrollWheelUp> 4<C-Y>")
vim.cmd.map("<S-ScrollWheelDown> 4<C-E>")

-- Keymap
vim.cmd.inoremap("jj <ESC>")
vim.cmd.inoremap("zk <ESC>:w<CR>")
vim.cmd.nnoremap("zk :w<CR>")
vim.cmd.nnoremap("z. :LspStart<CR>")
vim.cmd.nnoremap("z, :LspStop<CR>")

-- Toggle ruler
vim.keymap.set('n', '<c-g>', function()
    print("wtf") -- FIXME: with this print, ruler reappears blank
    if vim.opt.cmdheight:get() == 0 then
        vim.opt.cmdheight = 1
    elseif vim.opt.cmdheight:get() == 1 then
        vim.opt.cmdheight = 0
    end
end)

require "plug"
require "extra"

vim.cmd.colorscheme("allotropic")
