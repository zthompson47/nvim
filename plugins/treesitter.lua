require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust", "javascript", "python", "html", "css", "toml" },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
