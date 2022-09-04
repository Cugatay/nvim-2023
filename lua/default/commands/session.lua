-- Load Session
vim.cmd("autocmd VimEnter * silent! so ~/.vim-sessions`pwd`/session.vim | silent! call CleanNoNameEmptyBuffers() | NERDTree")
-- vim.cmd("au VimEnter *  NERDTree")

-- vim.cmd("autocmd VimLeavePre * NERDTreeClose")
vim.cmd("autocmd VimLeave * call SaveSession()")
