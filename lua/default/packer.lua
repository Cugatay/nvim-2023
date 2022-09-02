vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- For buffers and downline
  -- use 'vim-airline/vim-airline'
  -- use 'vim-airline/vim-airline-themes'
  use 'ap/vim-buftabline'                                                 -- Buffers
  use 'qpkorr/vim-bufkill'

  use 'mg979/vim-visual-multi'                                            -- Multi cursor

  use 'arcticicestudio/nord-vim'                                          -- Theme
  use 'joshdick/onedark.vim'
  use 'sainnhe/sonokai'
  use 'sainnhe/edge'

  use 'ryanoasis/vim-devicons'                                            -- Icons

  use 'junegunn/fzf.vim'                                                  -- F l    e r h
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end }   --  i e  S a c
  use 'yuki-yano/fzf-preview.vim'                                         -- Preview for file search

  use 'preservim/nerdtree'                                                -- NERDTree

  use {'lewis6991/gitsigns.nvim',                                         -- See git changes on left to the file
  config = function()
    require('gitsigns').setup()
  end
  }
  use 'tpope/vim-fugitive'                                                -- See git workflows
  use 'Xuyuanp/nerdtree-git-plugin'                                       -- See changed files on NERDTree
  -- use 'airblade/vim-gitgutter'

  use {'styled-components/vim-styled-components', branch = 'main' }       -- Styled components
  
  use { 'neoclide/coc.nvim', branch = 'release' }                         -- IntelliSense

  -- Javascript development
  -- use 'pangloss/vim-javascript'
  -- use 'leafgarland/typescript-vim'
  -- use 'peitalin/vim-jsx-typescript'
  -- use 'jparise/vim-graphql'
end)
