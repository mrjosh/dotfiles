local api = vim.api

-- Good maps
api.nvim_set_keymap('v', '<', '<gv', {noremap = true})
api.nvim_set_keymap('v', '>', '>gv', {noremap = true})
api.nvim_set_keymap('n', '<C-l>', ':nohl<CR><C-l>', {noremap = true, silent = true})
api.nvim_set_keymap('n', '<leader>pv', ':wincmd v<bar> :Ex <bar> :vertical resize 30<CR>', {noremap = true})
api.nvim_set_keymap('n', '<leader>w', ':bd<CR>', {noremap = true})
api.nvim_set_keymap('n', '<leader><space>', ':NERDTreeToggle<CR>', {noremap = true})

-- Plug maps
api.nvim_set_keymap('n', 'gd', ':Telescope lsp_definitions<CR>', {noremap = true, silent = true})
api.nvim_set_keymap('n', 'gr', ':Telescope lsp_references<CR>', {noremap = true, silent = true})
api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>', {noremap = true, silent = true})

-- Best practice rempas
api.nvim_set_keymap('', '<Up>', '<Nop>', {noremap = true})
api.nvim_set_keymap('', '<Down>', '<Nop>', {noremap = true})
api.nvim_set_keymap('', '<Right>', '<Nop>', {noremap = true})
api.nvim_set_keymap('', '<Left>', '<Nop>', {noremap = true})

-- Good maps from ThePrimeagen
api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", {noremap = true})
api.nvim_set_keymap('v', 'K', ":m '>-2<CR>gv=gv", {noremap = true})

-- Telescope
api.nvim_set_keymap('n', '<C-p>', ":lua require('mrjosh.telescope').search_files()<CR>", {noremap = true})
api.nvim_set_keymap('n', '<leader>vrc', ":lua require('mrjosh.telescope').search_dotfiles()<CR>", {noremap = true})
api.nvim_set_keymap('n', '<leader>ghg', ":lua require('mrjosh.gists').gists()<CR>", {noremap = true})
api.nvim_set_keymap('n', '<leader>gc', ":lua require('telescope.builtin').git_commits()<CR>", {noremap = true})
api.nvim_set_keymap('n', '<leader>pb', ":lua require('telescope.builtin').buffers()<CR>", {noremap = true})
api.nvim_set_keymap('n', '<leader>ps', ":lua require('mrjosh.telescope').live_grep()<CR>", {noremap = true})

-- auto completion
api.nvim_set_keymap("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true })
