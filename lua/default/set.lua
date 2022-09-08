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

require("bufferline").setup({
  options = {
    --separator_style = 'slant',
    --separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    separator_style = 'thin',
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#1e202e',
      bg = '#202334',
    },
    separator_selected = {
      fg = '#1e202e',
    },
    -- Unselected buffers
    background = {
      fg = '#657b83',
      bg = '#202334'
    },
    -- Selected buffers
    buffer_selected = {
      fg = '#ffffff',
      bold = true,
    },
    -- Bufferline background
    fill = {
      bg = '#1e202e'
    }
  },
})
-- vim.cmd("autocmd BufEnter * :syntax sync fromstart")
-- vim.cmd("autocmd BufLeave * :syntax sync clear")

-- vim.cmd("autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart")
-- vim.cmd("autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear")

-- vim.cmd([[
-- let g:vim_matchtag_enable_by_default = 1
-- let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.ts,*.tsx,*.vue,*.svelte,*.jsp'
-- ]])
