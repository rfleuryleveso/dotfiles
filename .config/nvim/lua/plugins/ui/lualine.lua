return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "auto",
			globalstatus = vim.o.laststatus == 3,
			disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },

			lualine_c = {
				{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
			},
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
