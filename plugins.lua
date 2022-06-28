vim.api.nvim_exec(
[[
  call plug#begin('~/.local/share/nvim/plugged')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neovim/nvim-lspconfig'
  call plug#end()
]], false)

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "javascript" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require'lspconfig'.rust_analyzer.setup{
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importGranularity = "crate",
        --importMergeBehavior = "last",
        --importPrefix = "by_self",
        importPrefix = "by_crate",
      },
      diagnostics = {
        disabled = { "unresolved-import" },
      },
      cargo = {
          allFeatures = true,
          loadOutDirsFromCheck = true,
      },
      procMacro = {
          enable = true,
      },
      checkOnSave = {
          command = "clippy",
      },
      -- highlighting = {
      --     strings = false,
      -- },
      -- inlayHints = {
      --     maxLength = 47,
      -- },
    }
  }
}
