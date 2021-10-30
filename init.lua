require('plugins')
require('keybindings')
require('lualine-config')
require('bufferline-config')
require('options')
require('nvim-tree-config')
require('auto-pairs-config')
require('treesitter-config')
require('whichkey-config')
require('telescope-config')
require('lsp')
require('indent-line-config')
--vim.cmd('colorscheme nord') backup
vim.g.tokyonight_style = "night"
vim.cmd('colorscheme tokyonight')


--vim.cmd([[
--function! FirstFunction()
--    echom "First Vim function!"
--endfunction
--]])
