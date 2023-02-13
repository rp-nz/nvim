-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Set highlight on search
vim.o.hlsearch = true

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

-- Telescope to look at all the marks 
keymap("n", "<leader>m", require('telescope.builtin').marks, { desc = 'List of marks' })
keymap("n", "<leader>r", require('telescope.builtin').registers, { desc = 'Show registers' })


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
    size = 100,
    open_mapping = [[<c-t>]], -- use ctrl-t to toggle toggletrem on or off
    hide_numbers = true,
    direction = "float",
    shade_filetypes = {},
    autochdir = false,
    shade_terminals = true,
    close_on_exit = true,
}
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')


-- Nvim-autopairs configuration
require("nvim-autopairs").setup {
}

-- Cokeline configuration
require('cokeline').setup({
  show_if_buffers_are_at_least = 2,
})

vim.opt.list = true
vim.opt.listchars:append "eol:↴"

require('indent_blankline').setup ({
  show_end_of_line = true,
  show_current_context = true,
  show_current_context_start = true,
})
