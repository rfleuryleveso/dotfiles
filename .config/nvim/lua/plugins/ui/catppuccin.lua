return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha",
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
		},
	},
}
