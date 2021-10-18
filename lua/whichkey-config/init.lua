local wk = require("which-key")
local mappings = {
    q = {":q<cr>", "Quit"},
    w = {":w<cr>", "Save"},
    E = {":e ~/.config/nvim/init.lua<cr>", "Edit config"},
    f = {":Telescope find_files<cr>", "Telescope find files"},
    g = {":Telescope live_grep<cr>", "Telescope live grep"},
    b = {":Telescope buffers<cr>", "Telescope show buffers"},
    h = {":Telescope<cr>", "Telescope show help"},
    r = {":Telescope registers<cr>", "Telescope show registers"},
    j = {":HopChar1<cr>", "HopChar1 Jump"},
    l = {":HopLine<cr>", "HopLine Jump"},
    W = {":HopWord<cr>", "HopWord Jump"},

}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
