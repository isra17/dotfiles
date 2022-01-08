vim.cmd [[set pumheight=10]]
vim.cmd [[set completeopt=menu,menuone,noselect]]
vim.cmd [[highlight! CmpItemKindDefault guifg=#268bd2]]

local cmp = require'cmp'

cmp.setup({
  mapping = {
    ['<C-j>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-k>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
        if entry then
          cmp.confirm()
          return
        end
      end
      fallback()
    end, {"i", "s", "c"}),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if not cmp.select_next_item() then
        fallback()
      end
    end, {"i","s","c",}),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if not cmp.select_prev_item() then
        fallback()
      end
    end, {"i", "s", "c"}),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
  }, {
    { name = 'buffer' },
  })
})

--Disable search autocomplete, it's more anoying than anything else and seems to break highlight.
---------
-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline('/', {
--   sources = {
--     { name = 'buffer' }
--   }
-- })

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
--local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
--  capabilities = capabilities
--}
