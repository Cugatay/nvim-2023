local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

-- TODO: Set keymaps on keymaps.lua

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          -- ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["n"] = fb_actions.create,
          ["r"] = fb_actions.rename,
          ["m"] = fb_actions.rename,
          -- ["h"] = fb_actions.goto_parent_dir,
          -- ["/"] = function()
          --   vim.cmd('startinsert')
          -- end
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<C-p>', function()
  builtin.find_files({
    -- TODO
    no_ignore = false,
    file_ignore_patterns = { ".git/", "node_modules/" },
    hidden = true
  })
end)

vim.keymap.set('n', '<C-f>', function()
  builtin.live_grep()
  -- builtin.grep_string()
end)

vim.keymap.set("n", "<C-b>", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)

-- vim.keymap.set('n', '<C-b>', function()
--   vim.cmd("Telescope file_browser")
-- end)

-- vim.keymap.set('n', ';f',
--   function()
--     builtin.find_files({
--       no_ignore = false,
--       hidden = true
--     })
--   end)
-- vim.keymap.set('n', ';r', function()
--   builtin.live_grep()
-- end)
-- vim.keymap.set('n', '\\\\', function()
--   builtin.buffers()
-- end)
-- vim.keymap.set('n', ';t', function()
--   builtin.help_tags()
-- end)
-- vim.keymap.set('n', ';;', function()
--   builtin.resume()
-- end)
-- vim.keymap.set('n', ';e', function()
--   builtin.diagnostics()
-- end)
-- vim.keymap.set("n", "sf", function()
--   telescope.extensions.file_browser.file_browser({
--     path = "%:p:h",
--     cwd = telescope_buffer_dir(),
--     respect_gitignore = false,
--     hidden = true,
--     grouped = true,
--     previewer = false,
--     initial_mode = "normal",
--     layout_config = { height = 40 }
--   })
-- end)
