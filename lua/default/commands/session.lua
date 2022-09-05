-- Load Session
vim.cmd("autocmd VimEnter * silent! so ~/.vim-sessions`pwd`/session.vim | NERDTree | winc l | silent! call CleanNoNameEmptyBuffers() |")
-- vim.cmd("au VimEnter *  NERDTree")

-- vim.cmd("autocmd VimLeavePre * NERDTreeClose")
vim.cmd("autocmd VimLeave * call SaveSession()")
