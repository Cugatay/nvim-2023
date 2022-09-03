-- vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

-- vim.opt.mouse = "a"

vim.cmd("autocmd BufEnter * :syntax sync fromstart")
vim.cmd("autocmd BufLeave * :syntax sync clear")

