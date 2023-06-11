local function keymap(key, func)
    return vim.keymap.set('n', key, func, { noremap = true, silent = true })
end
--keymap('<c-k>', vim.lsp.buf.signature_help)
keymap('<c-]>', vim.lsp.buf.definition)
keymap('K', vim.lsp.buf.hover)
keymap('gD', vim.lsp.buf.implementation)
keymap('1gD', vim.lsp.buf.type_definition)
keymap('gd', vim.lsp.buf.declaration)
keymap('<space>a', vim.lsp.buf.code_action)
keymap('<space>e', vim.diagnostic.open_float)
keymap('<space>f', vim.lsp.buf.format)
keymap('<space>r', vim.lsp.buf.rename)
keymap('<space>s', vim.lsp.buf.document_symbol)
keymap('<space>w', vim.lsp.buf.workspace_symbol)
keymap('<space><space>', vim.lsp.buf.references)
keymap('g[', vim.diagnostic.goto_prev)
keymap('g]', vim.diagnostic.goto_next)

-- Highlight references to a variable to visually track its use.
keymap('<c-k>', vim.lsp.buf.document_highlight)
keymap('<c-i>', vim.lsp.buf.clear_references)

require('rust-tools').setup({
    tools = {
        inlay_hints = {
            --parameter_hints_prefix = "💩",
            parameter_hints_prefix = "🌒", -- "🌙",
            other_hints_prefix = "☀️  ", -- Extra space for font bug
        },
    },
    server = {
        autostart = false,
        capabilities = {
            experimental = {
                serverStatusNotification = true,
            },
        },
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
                },
                lru = {
                    --capacity = 32,
                    capacity = 128,
                },
                procMacro = {
                    enable = true,
                },
                runnables = {
                    extraArgs = { "--jobs", "3" },
                },
                semanticHighlighting = {
                    operator = {
                        specialization = {
                            enable = true
                        },
                    },
                    punctuation = {
                        enable = true,
                        separate = {
                            macro = {
                                bang = true
                            },
                        },
                        specialization = {
                            enable = true
                        },
                    },
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
