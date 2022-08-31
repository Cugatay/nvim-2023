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

vim.opt.mouse = "a"

vim.cmd("colorscheme tokyonight")
vim.cmd("let g:airline#extensions#tabline#enabled = 1")
vim.cmd("let g:airline_theme='atomic'")

-- vim.cmd("autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart")
-- vim.cmd("autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear")
