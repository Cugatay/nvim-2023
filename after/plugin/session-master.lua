-- TODO: Write in lua

vim.cmd([[
function SaveSession()
  ! mkdir -p ~/.vim-sessions`pwd`
  mks! ~/.vim-sessions`pwd`/session.vim
  quit
endfunction
]])

local group_enter = vim.api.nvim_create_augroup("SessionLoad", { clear = true })
local group_leave = vim.api.nvim_create_augroup("SessionSave", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
  command = "silent! so ~/.vim-sessions`pwd`/session.vim",
  group = group_enter
})

vim.api.nvim_create_autocmd("VimLeave", {
  command = "call SaveSession()",
  group = group_leave
})
