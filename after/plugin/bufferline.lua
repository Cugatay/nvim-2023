local bufferline = require('bufferline')

bufferline.setup({
  options = {
    --separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
    separator_style = 'thin',
    show_buffer_close_icons = false,
    show_close_icon = false,
    -- diagnostics = "nvim_lsp",
    -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
    --   local icon = level:match("error") and " " or " "
    --   return " " .. icon .. count
    -- end,
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

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<C-w>', '<cmd>bd<CR>')

-- vim.keymap.set('n', 'g <Tab>', '<Cmd>BufferLineMovePrev<CR>', {})
-- vim.keymap.set('n', '<g <S-Tab>', '<Cmd>BufferLineMovePrev<CR>', {})
