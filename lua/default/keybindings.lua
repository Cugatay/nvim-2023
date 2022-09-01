-- if <cmd>grep -n -P "\t" NERD_tree_1<CR>
-- To delete words with alt + backspace
vim.cmd("imap <A-BS> <C-W>")

-- Window transitions
vim.cmd("noremap <C-h> <cmd>wincmd h<CR>")
vim.cmd("noremap <C-l> <cmd>wincmd l<CR>")

-- Buffer
vim.cmd("noremap <tab> <cmd>bn<CR>")
vim.cmd("noremap <S-tab> <cmd>bp<CR>")
vim.cmd("noremap <C-w> <cmd>call CloseBuffer()<CR>")

-- NERDTree Toggle
vim.cmd("noremap <C-b> <cmd>NERDTreeToggle<CR>")

-- Git Changes in a file
vim.cmd("noremap <C-a> <cmd>Gitsigns preview_hunk<CR>")
