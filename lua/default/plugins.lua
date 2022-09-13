local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- TODO: Add:
-- mg979/vim-visual-multi
-- leafOfTree/vim-matchtag
-- terrortylor/nvim-comment || preservim/nerdcommenter
-- APZelos/blamer.nvim
-- Maybe add qpkorr/vim-bufkill

-- use 'pangloss/vim-javascript'
-- use 'leafgarland/typescript-vim'
-- use 'peitalin/vim-jsx-typescript'
-- use 'jparise/vim-graphql'
-- use {'styled-components/vim-styled-components', branch = 'main' }       -- Styled components


packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  
  -- use {
  --   'svrana/neosolarized.nvim',
  --   requires = { 'tjdevries/colorbuddy.nvim' }
  -- }
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use "williamboman/mason.nvim"
  use 'williamboman/mason-lspconfig.nvim'


  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'

  use 'akinsho/nvim-bufferline.lua'
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive' -- It's in VimScript :(
end)
