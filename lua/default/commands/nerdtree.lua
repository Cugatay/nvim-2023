
-- Start NERDTree. If a file is specified, move the cursor to its window.
vim.cmd("autocmd StdinReadPre * let s:std_in=1")
vim.cmd("autocmd VimEnter * NERDTree | if argc() > 0 || exists('s:std_in') | wincmd p | endif")

-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd("autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call SaveSession() | endif")

-- Open the existing NERDTree on each new tab.
vim.cmd("autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif")

-- Show hidden files (.git etc.)
vim.cmd("let NERDTreeShowHidden=1")
