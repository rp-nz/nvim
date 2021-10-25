require("bufferline").setup{}
vim.cmd[[
nnoremap <silent><F1> :BufferLineCycleNext<CR>
nnoremap <silent><F2> :BufferLineCyclePrev<CR>
]]
