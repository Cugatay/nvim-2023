vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- For buffers at the top
  -- use 'vim-airline/vim-airline'
  -- use 'vim-airline/vim-airline-themes'
  use 'ap/vim-buftabline'
  -- Theme
  use 'folke/tokyonight.nvim'
  use 'morhetz/gruvbox'
  -- Icons
  use 'ryanoasis/vim-devicons'

  -- Searching Files
  use 'junegunn/fzf.vim'
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end }
  use 'preservim/nerdtree'

  -- Git
  use {'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
  }

  -- Javascript development
  -- use 'pangloss/vim-javascript'
  -- use 'leafgarland/typescript-vim'
  -- use 'peitalin/vim-jsx-typescript'
  -- use {'styled-components/vim-styled-components', branch = 'main' }
  -- use 'jparise/vim-graphql'
  
  -- IntelliSense
  use { 'neoclide/coc.nvim', branch = 'release' }
end)
