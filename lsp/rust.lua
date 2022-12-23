local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<c-]>', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', '<c-k>', vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', '1gD', vim.lsp.buf.type_definition, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', '<space>a', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<space>f', vim.lsp.buf.format, opts)
vim.keymap.set('n', '<space>r', vim.lsp.buf.rename, opts)
vim.keymap.set('n', '<space>s', vim.lsp.buf.document_symbol, opts)
vim.keymap.set('n', '<space>w', vim.lsp.buf.workspace_symbol, opts)
vim.keymap.set('n', '<space>/', vim.lsp.buf.document_symbol, opts)
vim.keymap.set('n', '<space><space>', vim.lsp.buf.references, opts)
vim.keymap.set('n', 'g[', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', 'g]', vim.diagnostic.goto_next, opts)

require('rust-tools').setup({
    tools = {
        autoSetHints = true,
        inlay_hints = {
            show_parameter_hints = true,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },
    server = {
        settings = {
            ["rust-analyzer"] = {
                cache = {
                    warmup = false,
                },
                cachePriming = {
                    numThreads = 3,
                },
                cargo = {
                    loadOutDirsFromCheck = true,
                },
                checkOnSave = {
                    command = "clippy",
                },
                completion = {
                    callable = {
                        snippets = "add_parentheses",
                    },
                },
                diagnostics = {
                    experimental = {
                        enable = true,
                    },
                },
                hover = {
                    actions = {
                        references = {
                            enable = true,
                        },
                    },
                },
                lru = {
                    capacity = 32,
                },
                procMacro = {
                    enable = true,
                },
                runnables = {
                    extraArgs = { "--jobs", "3" },
                },
            },
        },
    },
})
