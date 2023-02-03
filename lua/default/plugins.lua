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

  use 'neovim/nvim-lspconfig' -- LSP
  use "williamboman/mason.nvim"
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use "L3MON4D3/LuaSnip"
  use 'jose-elias-alvarez/null-ls.nvim'
  -- use 'rafamadriz/friendly-snippets'
  -- use 'onsails/lspkind-nvim' -- vscode-like pictograms
  -- use 'saadparwaiz1/cmp_luasnip'

  -- use {
  --   'VonHeikemen/lsp-zero.nvim',
  --   branch = 'v1.x',
  --   requires = {
  --     -- LSP Support
  --     { 'neovim/nvim-lspconfig' }, -- Required
  --     { 'williamboman/mason.nvim' }, -- Optional
  --     { 'williamboman/mason-lspconfig.nvim' }, -- Optional
  --
  --     -- Autocompletion
  --     { 'hrsh7th/cmp-buffer' }, -- Optional
  --     { 'hrsh7th/cmp-path' }, -- Optional
  --     { 'saadparwaiz1/cmp_luasnip' }, -- Optional
  --     { 'hrsh7th/cmp-nvim-lua' }, -- Optional
  --
  --     -- Snippets
  --     { 'L3MON4D3/LuaSnip' }, -- Required
  --     { 'rafamadriz/friendly-snippets' }, -- Optional
  --   }
  -- }









  use 'nvim-lua/plenary.nvim' -- Common utilities

  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline

  use 'terrortylor/nvim-comment'

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use 'kyazdani42/nvim-web-devicons' -- File icons

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'windwp/nvim-autopairs' -- Auto pair ' { ( [ etc.
  use 'windwp/nvim-ts-autotag' -- Automatically close ts tags -- TODO

  use 'norcalli/nvim-colorizer.lua'

  use 'akinsho/nvim-bufferline.lua'

  use 'lewis6991/gitsigns.nvim'

  use 'tpope/vim-fugitive' -- It's in VimScript :(
  use 'leafOfTree/vim-matchtag' -- It's in VimScript :(

  use 'wuelnerdotexe/vim-astro'
  use 'simrat39/rust-tools.nvim'

end)
