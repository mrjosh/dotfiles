local vim = vim

vim.o.background = 'dark'
vim.g.mapleader = ' '
vim.g.termguicolors = false
vim.g.loaded_perl_provider = 0
vim.g.gofmt_on_save = 1
vim.g.gofmt_exe = '/Users/josh/.go/bin/goimports'
vim.g.vsnip_snippet_dir = vim.fn.stdpath("config").."/snippets"
vim.g.material_style = "deep ocean"

vim.g.lightline = {
  colorscheme = 'material',
  active = {
    left = {
      {'mode', 'paste'},
      {'readonly', 'absolutepath', 'modified'},
    },
    right = {
      {'gitbranch'},
    },
  },
  component_function = {
    gitbranch = "FugitiveHead",
  },
};

vim.cmd [[
  set encoding=UTF-8
  set nohlsearch
  syntax enable
  let NERDTreeShowHidden=1
  colorscheme material
  set termguicolors
]]
