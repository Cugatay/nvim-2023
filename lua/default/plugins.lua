local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- TODO: Add:
-- mg979/vim-visual-multi

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Common utilities
  use 'nvim-lua/plenary.nvim'

  -- Language Server
  use 'neovim/nvim-lspconfig'
  use "williamboman/mason.nvim" -- Language servers
  use 'williamboman/mason-lspconfig.nvim'
  use 'yioneko/nvim-cmp' -- This is a fork, but it works better with TailwindCSS. To use Default: use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use "L3MON4D3/LuaSnip" -- Snippet engine requirement
  use 'jose-elias-alvarez/null-ls.nvim' -- Formatter
  use 'hrsh7th/cmp-buffer' -- Buffer course for intellisense
  -- ----------------------------------------------------------

  -- Editor Style
  use 'folke/tokyonight.nvim' -- Theme
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'akinsho/nvim-bufferline.lua' -- Bufferline
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }) -- Highlights
  -- ----------------------------------------------------------

  -- Must be coding features
  use 'windwp/nvim-autopairs' -- Auto pair ' { ( [ etc.
  use 'windwp/nvim-ts-autotag' -- Automatically close ts tags -- TODO
  use 'leafOfTree/vim-matchtag' -- Match and highlight tags (In vimscript)
  use 'terrortylor/nvim-comment' -- Comment out
  use 'norcalli/nvim-colorizer.lua' -- Colorize rgb and hex codes
  -- ---------------------------------------------------------

  -- Search files
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  -- ---------------------------------------------------------

  -- Git extensions
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive' -- It's in VimScript :(
  -- ---------------------------------------------------------

  -- Language Plugins
  use 'wuelnerdotexe/vim-astro'
  use 'simrat39/rust-tools.nvim'
  -- ---------------------------------------------------------

end)
