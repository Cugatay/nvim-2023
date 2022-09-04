-- Load Session
vim.cmd("autocmd VimEnter * so ~/.vim-sessions`pwd`/session.vim | call CleanNoNameEmptyBuffers() | NERDTree")
-- vim.cmd("au VimEnter *  NERDTree")

-- vim.cmd("autocmd VimLeavePre * NERDTreeClose")
vim.cmd("autocmd VimLeave * call SaveSession()")
