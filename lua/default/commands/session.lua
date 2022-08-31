-- vim.cmd("! mkdir -p ~/.vim-sessions`pwd`")
-- vim.cmd("autocmd VimLeavePre * mks! ~/.vim-sessions`pwd`/session.vim")
-- vim.cmd("autocmd VimEnter * so ~/.vim-sessions`pwd`/session.vim")
--

-- We have to create a function that does this. Because NERDTree has a exit command, we'll do the same in there

vim.cmd("autocmd VimLeave * NERDTreeClose")
vim.cmd("autocmd VimLeave * mksession! test.vim")

