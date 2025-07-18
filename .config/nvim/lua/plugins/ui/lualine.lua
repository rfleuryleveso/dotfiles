return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "auto",
			globalstatus = vim.o.laststatus == 3,
			disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
