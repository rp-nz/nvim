-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- set column marker
vim.opt.colorcolumn = "80"

-- move lines when highlighted
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- keeps the cursor in the middle of the screen when you scroll up or down
-- using ctrl-u and ctrl-d
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = '[e]Open NvimTree'})


-- Clear highlights
keymap("n", "<leader>c", "<cmd>nohlsearch<CR>", { desc = '[c]Clear search highlights'})


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n", "<leader>y", "\"+y")
keymap("v", "<leader>y", "\"+y")

-- Toggle configuration
require("toggleterm").setup{
    size = 20,
    open_mapping = [[<c-t>]], -- use ctrl-t to toggle toggletrem on or off
    hide_numbers = true,
    direction = "float",
    shade_filetypes = {},
    autochdir = false,
    shade_terminals = true,
    close_on_exit = true,
}

