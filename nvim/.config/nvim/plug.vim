if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

" Git wrapper
Plug 'tpope/vim-fugitive'
" GitHub extension for fugitive.vim
Plug 'tpope/vim-rhubarb'

if has("nvim")
  " Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

  " Ansible-language-server extension
  Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'}

  " css and scss modules autocompletion and go-to-definition  plugin
  Plug 'mlaursen/coc-scssmodules', {'do': 'yarn install && yarn build'}

  " Status bar
  Plug 'hoob3rt/lualine.nvim'

  " Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more
  Plug 'kyazdani42/nvim-web-devicons'

  " All the lua functions I don't want to write twice
  Plug 'nvim-lua/plenary.nvim'

  " [WIP] An implementation of the Popup API from vim in Neovim
  Plug 'nvim-lua/popup.nvim'

  " Fast search and fzf
  Plug 'nvim-telescope/telescope.nvim'

  " Indentation guides
  Plug 'lukas-reineke/indent-blankline.nvim'

  " Tabs, as understood by any other editor
  Plug 'romgrk/barbar.nvim'
endif


" The fancy start screen for Vim
Plug 'mhinz/vim-startify'

" Show git diff in sign column
Plug 'airblade/vim-gitgutter'

" Delete/change/add parentheses/quotes/XML-tags/much more with ease
Plug 'tpope/vim-surround'

" An arctic, north-bluish clean and elegant Vim color theme
Plug 'arcticicestudio/nord-vim'

"A vim plugin for syntax highlighting Ansible's common filetypes
Plug 'pearofducks/ansible-vim'

" File system navigation inside vim, :NERDTree
Plug 'preservim/nerdtree'

" Neovim plugin for GitHub Copilot
Plug 'github/copilot.vim'

call plug#end()
