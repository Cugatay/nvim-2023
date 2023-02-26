local fterm = require('FTerm')
fterm.setup({
  cmd        = "lazygit",
  dimensions = {
    height = 0.95,
    width = 0.95,
  },

})

vim.keymap.set('n', '<C-g>', '<CMD>lua require("FTerm").toggle()<CR>')
