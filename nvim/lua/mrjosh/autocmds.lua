local vim = vim
local utils = require 'mrjosh.utils'

utils.create_augroup({
  {'TextYankPost', "*", "silent!", "lua", "require'vim.highlight'.on_yank({timeout = 40})"}
}, 'highlight_yank')

vim.cmd [[
autocmd BufNewFile,BufRead *.yaml.j2 set syntax=yaml
autocmd BufNewFile,BufRead *.yml.j2 set syntax=yaml
]]

vim.cmd [[
  if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif

  hi! Normal ctermbg=NONE guibg=NONE 
  hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 
]]
