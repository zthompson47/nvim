local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')
Plug 'ciaranm/securemodelines'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
Plug 'simrat39/rust-tools.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'ray-x/lsp_signature.nvim'
Plug 'norcalli/nvim-colorizer.lua'
--Plug 'dense-analysis/ale'
--Plug 'nvim-lua/plenary.nvim
--Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] =
--'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && ' ..
--'cmake --build build --config Release && ' ..
--'cmake --install build --prefix build'
--})
--Plug 'nvim-telescope/telescope.nvim'
--Plug 'navarasu/onedark.nvim'
vim.call('plug#end')

--require('onedark').setup {
--    style = 'darker'
--}
--require('onedark').load()

require('mason').setup()
require('mason-lspconfig').setup {
    automatic_installation = true,
    ensure_installed = { "lua_ls", "rust_analyzer", "wgsl_analyzer" },
}

require('lspconfig').wgsl_analyzer.setup {}

require('nvim-treesitter.configs').setup {
    ensure_installed = { "lua", "rust", "toml", "wgsl", "sql", "vimdoc" },
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    ident = { enable = true },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    playground = { enable = true },
}

require('colorizer').setup()

require 'lsp/lua'
require 'lsp/rust'
require 'completion'
require 'signature'
--require "telescope"
