if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdcommenter'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
"Plug 'PhilRunninger/nerdtree-visual-selection' 

Plug 'mkitt/tabline.vim'
Plug 'tweekmonster/gofmt.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'commit': '3c07232'}
"Plug 'https://github.com/Valloric/YouCompleteMe'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'

"Plug 'phaazon/hop.nvim'
Plug 'phaazon/hop.nvim', { 'branch': 'pre-extmarks' }
Plug 'sainnhe/edge'

Plug 'ThePrimeagen/harpoon'

Plug 'b4b4r07/vim-hcl'
Plug 'pwntester/octo.nvim'
Plug 'udalov/kotlin-vim'

Plug 'brooth/far.vim'
Plug 'tpope/vim-fugitive'

Plug 'towolf/vim-helm'

call plug#end()
