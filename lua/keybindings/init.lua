vim.g.mapleader = ' '  

local map = vim.api.nvim_set_keymap

map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})

map('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})

map('n', 'hw', ':HopWord<CR>', {noremap = true, silent = true})
map('n', 'hl', ':HopLine<CR>', {noremap = true, silent = true})
map('n', 'hp', ':HopPattern<CR>', {noremap = true, silent = true})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})


