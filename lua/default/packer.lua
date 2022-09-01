vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'ap/vim-buftabline'                                                 -- Buffers
  use 'folke/tokyonight.nvim'                                             -- Theme
  use 'morhetz/gruvbox'                                                   -- Theme
  use 'ryanoasis/vim-devicons'                                            -- Icons

  use 'junegunn/fzf.vim'                                                  -- File Search
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end }
  -- use 'jremmen/vim-ripgrep'                                               -- Word Search
  use 'preservim/nerdtree'                                                -- NERDTree

  use {'lewis6991/gitsigns.nvim',                                         -- See git changes
  config = function()
    require('gitsigns').setup()
  end
  }
  use 'Xuyuanp/nerdtree-git-plugin'                                       -- See changed files on NERDTree
  use {'akinsho/git-conflict.nvim', tag = "*", config = function()        -- Resolve git conflicts
  require('git-conflict').setup()
  end}

  use {'styled-components/vim-styled-components', branch = 'main' }       -- Styled components
  
  use { 'neoclide/coc.nvim', branch = 'release' }                         -- IntelliSense

  -- For buffers at the top
  -- use 'vim-airline/vim-airline'
  -- use 'vim-airline/vim-airline-themes'

  -- Javascript development
  -- use 'pangloss/vim-javascript'
  -- use 'leafgarland/typescript-vim'
  -- use 'peitalin/vim-jsx-typescript'
  -- use 'jparise/vim-graphql'
end)
