vim.call('plug#begin', '~/.local/share/nvim/plugged')
local Plug = vim.fn['plug#']
Plug 'ciaranm/securemodelines'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
Plug 'simrat39/rust-tools.nvim'
Plug('hrsh7th/nvim-cmp', { ['commit'] = '950d0e3a93ba61c13b031c086d11eacf4bd48d24' })
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'ray-x/lsp_signature.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { ['branch'] = '0.1.x' })
Plug('nvim-telescope/telescope-fzf-native.nvim', {
    ['do'] =
        'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && ' ..
        'cmake --build build --config Release && ' ..
        'cmake --install build --prefix build'
})
Plug 'nvim-lua/lsp-status.nvim'
--Plug 'nvim-telescope/telescope-ui-select.nvim'
vim.call('plug#end')

require('colorizer').setup({ '*' }, { mode = 'foreground' })
vim.keymap.set('n', '<Leader>c', ':ColorizerToggle<CR>')

require('lspconfig').wgsl_analyzer.setup {}

require('mason').setup()
require('mason-lspconfig').setup {
    automatic_installation = true,
    ensure_installed = { "lua_ls", "rust_analyzer", "wgsl_analyzer" },
}

require('nvim-treesitter.configs').setup {
    ensure_installed = {
        "c", "css", "html", "javascript", "lua", "python",
        "rust", "toml", "wgsl", "sql", "vimdoc",
    },
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
require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
        },
        --["ui-select"] = {
        --    require("telescope.themes").get_dropdown {
        --        -- more opts
        --    }
        --},
    }
}
require('telescope').load_extension('fzf')
--require('telescope').load_extension('ui-select')

-- Lsp window borders
local _border = 'rounded'
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        border = _border,
    }
)
require('lspconfig.ui.windows').default_options = {
    border = _border,
}
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        border = _border
    }
)
vim.diagnostic.config {
    float = { border = _border }
}

--[[
local lsp_status = require('lsp-status')
lsp_status.register_progress()
local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup({
    on_attach = lsp_status.on_attach,
    capabilities = lsp_status.capabilities,
})
vim.api.nvim_create_autocmd('User LspProgress', {
    callback = function(_)
        vim.notify(lsp_status.status())
    end
})
]]

require 'lsp/lua'
require 'lsp/rust'
require 'completion'
require 'signature'
