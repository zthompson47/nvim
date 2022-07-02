local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug 'neovim/nvim-lspconfig'
Plug 'simrat39/rust-tools.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] =
'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && ' ..
    'cmake --build build --config Release && ' ..
    'cmake --install build --prefix build'
})
Plug 'nvim-telescope/telescope.nvim'
Plug 'ray-x/lsp_signature.nvim'
vim.call('plug#end')

require "treesitter"
require "telescope"
require "lsp/lua"
require "lsp/rust"
require "completion"
require "signature"
