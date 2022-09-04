-- Load Session
vim.cmd("autocmd VimEnter * so ~/.vim-sessions`pwd`/session.vim | call CleanNoNameEmptyBuffers()")

-- vim.cmd("autocmd VimLeavePre * NERDTreeClose")
vim.cmd("autocmd VimLeave * call SaveSession()")
