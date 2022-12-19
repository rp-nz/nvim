return function(use)
  use({
    use {
	"windwp/nvim-autopairs",
         config = function() require("nvim-autopairs").setup {} end
        },
    use {
        'nvim-tree/nvim-tree.lua',
         requires = {
           'nvim-tree/nvim-web-devicons', -- optional, for file icons
         },
         tag = 'nightly' -- optional, updated every week. (see issue #1193)
        },
    use {
        "akinsho/toggleterm.nvim", tag = '*',
        config = function()
        require("toggleterm").setup()
        end
        },
  })
end
