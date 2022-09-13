local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

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

-- TODO: Move this to keymaps
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
