-- Window transitions
vim.cmd("noremap <C-h> <cmd>wincmd h<CR>")
vim.cmd("noremap <C-l> <cmd>wincmd l<CR>")

-- Buffer transitions
vim.cmd("noremap <tab> <cmd>bn<CR>")
vim.cmd("noremap <S-tab> <cmd>bp<CR>")

-- To delete words with alt + backspace
vim.cmd("imap <A-BS> <C-W>")

-- NERDTree shortcuts
vim.cmd("noremap <C-b> <cmd>NERDTreeToggle<CR>")

