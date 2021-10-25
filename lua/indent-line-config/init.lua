vim.opt.list = true

if vim.fn.has('unix') == 1 then
    vim.opt.listchars:append("space:⋅")
    vim.opt.listchars:append("eol:↴")
end

require("indent_blankline").setup {
    --char = "|",
    show_end_of_line = true,
    space_char_blankline = " ",
    --buftype_exclude = {"terminal"}
}
