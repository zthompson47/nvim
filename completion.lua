-- set completeopt=menuone,noinsert,noselect
vim.cmd[[set completeopt=menu,menuone,noselect]]
vim.cmd[[set shortmess+=c]]

local cmp = require 'cmp'
cmp.setup({
    --    window = {
    --    },
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
        ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
        --['<C-m>'] = cmp.mapping.scroll_docs(-4),
        --['<C-n>'] = cmp.mapping.scroll_docs(4),

        ['<C-i>'] = cmp.mapping.scroll_docs(-1),
        ['<C-u>'] = cmp.mapping.scroll_docs(1),

        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        --['<C-a>'] = cmp.mapping.confirm({
        --    behavior = cmp.ConfirmBehavior.Insert,
        --    select = true,
        --}),
        ['<CR>'] = cmp.mapping.confirm({
            --behavior = cmp.ConfirmBehavior.Insert,
            --behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
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
cmp.setup.cmdline(':', {
    --mapping = cmp.mapping.preset.cmdline(),
    mapping = cmp.setup.mapping,
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})
