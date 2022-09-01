require("default")
-- vim.cmd("so ~/.config/nvim/coc.vim")
vim.cmd([[
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<tab><c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])
