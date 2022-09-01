require("default")
-- vim.cmd("so ~/.config/nvim/coc.vim")

-- Press Enter or Tab to complete
vim.cmd([[
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<tab><c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])

-- Press C-space to refresh suggestions
vim.cmd([[
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
]])
