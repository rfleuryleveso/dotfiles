return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		'nvim-tree/nvim-web-devicons', -- optional
	},
	lazy = false,
	config = function()
		require("nvim-tree").setup ({
			filters = { custom = { "^.git$" } }
		})
	end,
}
