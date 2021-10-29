-- aliases
local o  = vim.o     -- global
local g  = vim.g     -- global for let options
local wo = vim.wo    -- window local
local bo = vim.bo    -- buffer local
local fn = vim.fn    -- access vim functions
local cmd = vim.cmd  -- vim commands
local opt = vim.opt  -- to set options

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


cmd('filetype plugin indent on')
opt.dictionary:append("/usr/share/dict/words")
o.splitright = true
o.whichwrap = '<,>,h,l'
o.fileencoding = 'utf-8'
o.showtabline = 2
o.completeopt = "menuone,noselect"
o.clipboard = 'unnamedplus'
o.cursorline = true
o.inccommand = 'nosplit'
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 3
o.showcmd = true
o.wildmenu = true
o.mouse = 'a'
o.showmatch = true
o.expandtab = true
o.ruler = true
o.showmode = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.shiftround = true
--o.timeout = false Not needed. 
o.timeoutlen = 10
o.title = true
o.hidden = true
cmd('set relativenumber')
map('n', '<leader>c', '<cmd>noh<CR>') --Clear highlights
map('n', '<leader>o', 'o<Esc>')
vim.cmd("vnoremap // y/\\V<C-R>=escape(@\",'/\')<CR><CR>")
