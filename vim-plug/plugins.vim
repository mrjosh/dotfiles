" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'towolf/vim-helm'
Plug 'pearofducks/ansible-vim'
Plug 'posva/vim-vue'
Plug 'preservim/nerdcommenter'
"Plug 'udalov/kotlin-vim'
"Plug 'tpope/vim-surround'
"Plug 'mhinz/vim-startify'
"Plug 'justinmk/vim-sneak'
"Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
"Plug 'jnwhiteh/vim-golang'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

"File Search:
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"File Browser:
Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'mkitt/tabline.vim'
"Plug 'ryanoasis/vim-devicons'
"Plug 'preservim/nerdtree'

"Color:
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
"Plug 'whatyouhide/vim-gotham'
"Plug 'ayu-theme/ayu-vim'
"Plug 'liuchengxu/space-vim-dark'
"Plug 'sainnhe/gruvbox-material'
Plug 'hashivim/vim-terraform'
Plug 'hzchirs/vim-material'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate', 'commit': '3c07232'} 

"Golang:
Plug 'fatih/vim-go' 
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"Autocomplete:
Plug 'ncm2/ncm2'
"Plug 'ncm2/ncm2-go'
Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

"Snippets:
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'

"Git:
"Plug 'tpope/vim-fugitive'

call plug#end()

