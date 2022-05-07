local vim = vim

local Plug = vim.fn['plug#']
vim.call('plug#begin', '/Users/josh/.config/nvim/plugged')

  -- colorschemes
  Plug 'gruvbox-community/gruvbox'
  Plug 'tjdevries/colorbuddy.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'romgrk/doom-one.vim'
  Plug 'sainnhe/edge'
  Plug 'shinchu/lightline-gruvbox.vim'

  Plug 'ryanoasis/vim-devicons'
  Plug 'joshdick/onedark.vim'
  Plug 'stephpy/vim-yaml'

  --Plug('kaicataldo/material.vim', { branch = 'main', ['do'] = function ()
    --vim.opt.termguicolors = true
    --vim.cmd('colorscheme material')
  --end})

  Plug('marko-cerovac/material.nvim', {branch = 'main', ['do'] = function ()
    vim.opt.termguicolors = true
    vim.cmd('colorscheme material')
  end})

  Plug 'rhysd/git-messenger.vim'

  Plug 'preservim/nerdcommenter'

  -- telescopic johnson
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  -- nerdtree
  Plug 'scrooloose/nerdtree'

  -- Plug 'mkitt/tabline.vim'
  Plug 'tweekmonster/gofmt.vim'

  -- Tree-Shitter
  Plug('nvim-treesitter/nvim-treesitter', {['do'] = function ()
    vim.cmd ':TSUpdate'
  end})
  Plug 'nvim-treesitter/playground'

  Plug 'folke/persistence.nvim'

  --Plug('neoclide/coc.nvim', {branch = 'release'})
  --Plug('neoclide/coc.nvim')

  Plug 'neovim/nvim-lspconfig'
  --Plug 'kabouzeid/nvim-lspinstall'
  Plug 'williamboman/nvim-lsp-installer'

  -- Auto completion
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  -- For vsnip users.
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  -- For luasnip users.
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

  -- For ultisnips users.
  Plug 'SirVer/ultisnips'
  Plug 'quangnguyen30192/cmp-nvim-ultisnips'

  -- For snippy users.
  Plug 'dcampos/nvim-snippy'
  Plug 'dcampos/cmp-snippy'

  --Plug 'phaazon/hop.nvim'

  --Plug 'ThePrimeagen/harpoon'

  -- hcl (Hashicorp Config Language) syntax hightliting
  Plug 'b4b4r07/vim-hcl'

  Plug 'tpope/vim-fugitive'
  Plug 'TimUntersberger/neogit'

  -- Helm charts syntax hightliting
  Plug 'towolf/vim-helm'

  Plug 'itchyny/lightline.vim'

vim.call('plug#end')
