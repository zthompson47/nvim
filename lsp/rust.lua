local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<c-]>', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.implementation, opts)

--vim.keymap.set('n', '<c-k>', vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', '<c-k>', vim.lsp.buf.document_highlight, opts)
vim.keymap.set('n', '<c-i>', vim.lsp.buf.clear_references, opts)

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
        inlay_hints = {
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },
    server = {
        autostart = false,
        standalone = false,
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
                    buildScripts = true,
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
                    enable = true,
                    disabled = {
                        "inactive-code",
                    },
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
                inlayHints = {
                    closureCaptureHints = {
                        enable = true,
                    },
                    --parameterHints = {
                    --    enable = true,
                    --},
                },
                lru = {
                    capacity = 32,
                    --capacity = 128,
                },
                procMacro = {
                    enable = true,
                },
                runnables = {
                    extraArgs = { "--jobs", "3" },
                },
                typing = {
                    autoClosingAngleBrackets = {
                        enable = true,
                    },
                },
            },
        },
    },
})
