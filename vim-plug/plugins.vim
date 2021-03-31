if empty(glob('$HOME/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo $HOME/config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('$HOME/.config/nvim/plugged')

" colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

Plug 'preservim/nerdcommenter'

" telescopic johnson
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" nerdtree
Plug 'scrooloose/nerdtree'

"Plug 'mkitt/tabline.vim'
Plug 'tweekmonster/gofmt.vim'

" Tree-Shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'commit': '3c07232'}

"Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'phaazon/hop.nvim'
Plug 'phaazon/hop.nvim', { 'branch': 'pre-extmarks' }

Plug 'ThePrimeagen/harpoon'

" hcl (Hashicorp Config Language) syntax hightliting
Plug 'b4b4r07/vim-hcl'

" Kotlin in nvim?
Plug 'udalov/kotlin-vim'

Plug 'tpope/vim-fugitive'

" Helm charts syntax hightliting
Plug 'towolf/vim-helm'

call plug#end()
