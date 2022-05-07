local vim = vim

vim.opt.wildignore:append {
  "*.pyc",
  "*_build/*",
  "**/coverage/*",
  "**/node_modules/*",
  "**/venv/*",
  "**/vendor/*",
  "**/android/*",
  "**/ios/*",
  "**/.git/*",
}

vim.opt.cursorline = true
vim.opt.syntax = 'on'
vim.opt.encoding = 'UTF-8'
vim.o.completeopt = "menuone,noselect"

vim.cmd [[ set noswapfile ]]
vim.opt.ignorecase = true
vim.opt.rnu = true
vim.opt.nu = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.autowrite = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
