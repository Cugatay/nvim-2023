-- if <cmd>grep -n -P "\t" NERD_tree_1<CR>
-- To delete words with alt + backspace
vim.cmd("imap <A-BS> <C-W>")

-- Window transitions
vim.cmd("noremap <C-h> <cmd>wincmd h<CR>")
vim.cmd("noremap <C-l> <cmd>wincmd l<CR>")
vim.cmd("noremap <C-j> <cmd>wincmd j<CR>")
vim.cmd("noremap <C-k> <cmd>wincmd k<CR>")

-- Buffer
vim.cmd("noremap <tab> <cmd>bn<CR>")
vim.cmd("noremap <S-tab> <cmd>bp<CR>")
vim.cmd("noremap <C-w> <cmd>BD<CR>")


-- NERDTree Toggle
vim.cmd("noremap <C-b> <cmd>NERDTreeToggle<CR>")

-- Git Changes
vim.cmd("noremap <C-c> <cmd>Gitsigns preview_hunk<CR>")  -- Little
vim.cmd("noremap <C-a> <cmd>Gdiffsplit<CR>")             -- Whole split

-- Fuzzy Finder
vim.cmd("noremap <C-m> <cmd>Files<CR>")
vim.cmd("noremap <C-g> <cmd>GitFiles<CR>")
vim.cmd("noremap <C-f> <cmd>Ag<CR>")
