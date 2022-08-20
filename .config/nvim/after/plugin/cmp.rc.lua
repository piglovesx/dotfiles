local status, cmp = pcall(require, 'cmp')
if (not status) then return end

cmp.setup({
  sources = cmp.config.sources({
    {name = 'nvim_lsp'},
    {name = 'buffer'}
  })
})
