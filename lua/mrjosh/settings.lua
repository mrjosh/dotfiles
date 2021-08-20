local vim = vim

vim.o.background = 'dark'
vim.g.mapleader = ' '
vim.g.termguicolors = true
vim.g.material_theme_style = 'palenight-community'
vim.g.loaded_perl_provider = 0
vim.g.gofmt_on_save = 1
vim.g.gofmt_exe = '/Users/josh/go/bin/goimports'

vim.cmd [[
  set nohlsearch
  syntax enable
  colorscheme material
  let NERDTreeShowHidden=1

  :set termguicolors
  if (has('termguicolors'))
    set termguicolors
  endif
]]

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  }
}
