source $HOME/.config/nvim/vim-plug/plugins.vim

" COPY/PASTE:
"-----------
"Increases the memory limit from 50 lines to 1000 lines
:set viminfo='100,<1000,s10,h
let mapleader = " "

"NUMBERING:
"----------
:set number
:set nu
:set relativenumber
:set rnu
set expandtab
set tabstop=2
set shiftwidth=2

let g:gofmt_on_save = 1
let g:gofmt_exe = "/Users/josh/.go/bin/goimports"

"INDENTATION:
"------------
"Highlights code for multiple indents without reselecting
vnoremap < <gv
vnoremap > >gv

"COLOR:
"------
set background=dark
colorscheme material
"colorscheme gruvbox

" material theme baby
let g:material_theme_style = 'palenight-community'

" gruvbox baby
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_termcolors=16
let g:gruvbox_invert_selection='0'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

highlight ColorColumn ctermbg=0 guibg=grey
highlight Normal guibg=none
highlight LineNr guifg=#ff8659
highlight LineNr guifg=#aed75f
highlight LineNr guifg=#5eacd3
highlight netrwDir guifg=#5eacd3
highlight qfFileName guifg=#aed75f

lua <<EOF
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
      },
    },
  },
}
EOF

hi TelescopeBorder guifg=#5eacd
highlight TelescopeSelection      guifg=#D79921 gui=bold " selected item

lua <<EOF
search_files = function()
  require('telescope.builtin').find_files(
    require('telescope.themes').get_dropdown({
      shorten_path = false,
      border = true,
      previewer = false
    }
  ))
end
EOF
nnoremap <C-p> :lua search_files()<CR>

lua <<EOF
search_dotfiles = function()
  require("telescope.builtin").find_files(
    require('telescope.themes').get_dropdown({
      shorten_path = false,
      border = true,
      previewer = false,
      prompt_title = "< Dotfiles >",
      cwd = "$HOME/.config/nvim",
    })
  ) 
end
EOF
nnoremap <leader>vrc :lua search_dotfiles()<CR>

"nnoremap <C-p> :lua grrequire('telescope.builtin').find_files()<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
"autocmd User TelescopePreviewerLoaded setlocal wrap

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

" COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> qf <Plug>(coc-fix-current)

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>w :bd<CR>
nnoremap <leader><space> :NERDTreeToggle<CR>

nnoremap <leader>o :w <bar> %bd <bar> e# <bar> bd# <CR>
nnoremap <leader>hw :HopWord<CR>
nnoremap <leader>hl :HopLine<CR>

" NOPEEEEE
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"nnoremap <leader>gb :call SendTerminalCommand(0, "go build . fortress && ./fortress" . expand("%") . "\n")<CR>
nnoremap <leader>t :terminal<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

if (has('termguicolors'))
  set termguicolors
endif

set encoding=UTF-8
set nohlsearch

" Tree-shitter
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

"SHORTCUTS:
"----------
"Open file at same line last closed
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

"SOURCING:
"---------
"Automatically reloads neovim configuration file on write (w)
autocmd! bufwritepost init.vim source %
"TEXT SEARCH:
"------------
"Makes Search Case Insensitive
set ignorecase
set noswapfile

"GIT (FUGITIVE):
"---------------
map fgb :Gblame<CR>
map fgs :Gstatus<CR>
map fgl :Glog<CR>
map fgd :Gdiff<CR>
map fga :Git add %:p<CR>
map fgp :Git pull<CR>

"SYNTAX HIGHLIGHTING:
"--------------------
syntax on

"HIGHLIGHTING:
"-------------
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Highlight the current line the cursor is on
set cursorline

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 1

hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

" Sneak configurations
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

lua require('telescope').load_extension('octo')

au BufNewFile,BufRead Jenkinsfile setf groovy

