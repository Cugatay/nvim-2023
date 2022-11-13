local keymap = vim.keymap

-- To delete words with alt + backspace
keymap.set('i', '<A-BS>', '<C-w>')
keymap.set('c', '<A-BS>', '<C-w>')

-- Window transitions
keymap.set('n', '<C-h>', '<cmd>wincmd h<CR>')
keymap.set('n', '<C-l>', '<cmd>wincmd l<CR>')
keymap.set('n', '<C-j>', '<cmd>wincmd j<CR>')
keymap.set('n', '<C-k>', '<cmd>wincmd k<CR>')

-- Buffer
keymap.set('n', '<TAB>', '<cmd>bn<CR>')
keymap.set('n', '<S-TAB>', '<cmd>bp<CR>')
keymap.set('n', '<C-w>', '<cmd>bd<CR>')

keymap.set('n', '<C-s>', '<cmd>w<CR>')
keymap.set('i', '<C-s>', '<cmd>w<CR>')

-- Line up and down
-- keymap.set('n', '<S-j>', ':m .+1<CR>==')
-- keymap.set('n', '<S-k>', ':m .-2<CR>==')
-- keymap.set('v', '<S-j>', ":m '>+1<CR>gv=gv")
-- keymap.set('v', '<S-k>', ":m '<-2<CR>gv=gv")

-- Don't copy to clipboard when using x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '=', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Trouble
keymap.set('n', "<C-t>", "<cmd>TroubleToggle<CR>")

-- Copy to clipboard
keymap.set('v', "<C-c>", '"+y')
