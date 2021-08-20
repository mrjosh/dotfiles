local vim = vim

local Plug = vim.fn['plug#']
vim.call('plug#begin', '$HOME/.config/nvim/plugged')

  -- colorschemes
  Plug 'gruvbox-community/gruvbox'
  Plug 'sainnhe/gruvbox-material'
  Plug('kaicataldo/material.vim', {branch = 'main', ['do'] = function ()
    vim.opt.termguicolors = true
	  vim.cmd('colorscheme material')
  end})

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

  Plug 'folke/persistence.nvim'

  --Plug('neoclide/coc.nvim', {branch = 'release'})

  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'

  -- Auto completion
  Plug 'hrsh7th/nvim-compe'
  Plug 'norcalli/snippets.nvim'
  Plug 'SirVer/ultisnips'
  Plug 'L3MON4D3/LuaSnip'
  --Plug 'mfussenegger/nvim-lsp-compl'

  Plug 'glepnir/lspsaga.nvim'
  Plug 'simrat39/symbols-outline.nvim'

  Plug 'phaazon/hop.nvim'

  Plug 'ThePrimeagen/harpoon'

  -- hcl (Hashicorp Config Language) syntax hightliting
  Plug 'b4b4r07/vim-hcl'

  Plug 'tpope/vim-fugitive'
  --Plug 'rcarriga/nvim-notify'

  -- Helm charts syntax hightliting
  Plug 'towolf/vim-helm'

vim.call('plug#end')
