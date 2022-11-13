-- TODO: Write in lua

vim.cmd([[
function SaveSession()
  ! mkdir -p ~/.vim-sessions`pwd`
  mks! ~/.vim-sessions`pwd`/session.vim
  quit
endfunction
]])

-- local augroup_enter = vim.api.nvim_create_augroup("Enter", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", { command = "silent! so ~/.vim-sessions`pwd`/session.vim" })

vim.cmd("autocmd VimLeave * call SaveSession()")
