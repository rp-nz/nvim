vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    --char = "|",
    show_end_of_line = true,
    space_char_blankline = " ",
    --buftype_exclude = {"terminal"}
}