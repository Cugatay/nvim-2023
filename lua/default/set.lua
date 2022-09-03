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
--
vim.cmd([[
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
]])

vim.cmd("colorscheme onedark")

vim.cmd([[
let g:blamer_enabled = 1
let g:blamer_delay = 500
]])

vim.cmd([[
let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.ts,*.tsx,*.vue,*.svelte,*.jsp'
]])

--
-- vim.cmd("let g:airline#extensions#tabline#enabled = 1")
-- vim.cmd("let g:airline_theme='atomic'")

--vim.cmd("autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart")
-- vim.cmd("autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear")

vim.cmd("autocmd BufEnter * :syntax sync fromstart")
vim.cmd("autocmd BufLeave * :syntax sync clear")

