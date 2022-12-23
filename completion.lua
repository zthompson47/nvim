-- set completeopt=menuone,noinsert,noselect
vim.cmd[[set completeopt=menu,menuone,noselect]]
vim.cmd[[set shortmess+=c]]

local cmp = require 'cmp'
cmp.setup({
    --    window = {
    --    },
--    snippet = {
--        expand = function(args)
--            vim.fn["vsnip#anonymous"](args.body)
--        end,
--    },
    mapping = {
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<C-m>'] = cmp.mapping.scroll_docs(-4),
        ['<C-n>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        --['<C-a>'] = cmp.mapping.confirm({
        --    behavior = cmp.ConfirmBehavior.Insert,
        --    select = true,
        --}),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        }),
    },
    sources = {
        { name = 'nvim_lsp' },
        --{ name = 'vsnip' },
        { name = 'path' },
        --{ name = 'buffer' },
        --{ name = 'cmdline' },
    },
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline('/', {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = {
--        { name = 'buffer' }
--    }
--})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline(':', {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = cmp.config.sources({
--        { name = 'path' }
--    }, {
--        { name = 'cmdline' }
--    })
--})

-- Disable completion in comments.  TODO: doesn't work!
cmp.setup({
    enabled = function()
        -- disable completion in comments
        local context = require 'cmp.config.context'
        -- keep command mode completion enabled when cursor is in a comment
        if vim.api.nvim_get_mode().mode == 'c' then
            return true
        else
            return not context.in_treesitter_capture("comment")
                and not context.in_syntax_group("Comment")
        end
    end
})
