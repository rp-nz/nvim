require("bufferline").setup{}
vim.cmd[[
nnoremap <silent>nb :BufferLineCycleNext<CR>
nnoremap <silent>pb :BufferLineCyclePrev<CR>
]]
