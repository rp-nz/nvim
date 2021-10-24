require("bufferline").setup{}
vim.cmd[[
nnoremap <silent>nb :BufferLineCycleNext<CR>
nnoremap <silent>ob :BufferLineCyclePrev<CR>
]]
