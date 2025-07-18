return {
	"olimorris/codecompanion.nvim",
	opts = function()
		return {
			strategies = {
				-- Change the default chat adapter
				chat = {
					adapter = "stormshield_ai",
				},
				inline = {
					adapter = "stormshield_ai",
				},
				cmd = {
					adapter = "stormshield_ai",
				},
			},
			adapters = {
				stormshield_ai = function()
					return require("codecompanion.adapters").extend("openai_compatible", {
						env = {
							url = "https://ai-code.labo.int",
							api_key = "CODERD29IGFbuEccnrSqCZwI53gSVeeH3P0mmHD3R5JTup24",
						},
						schema = {
							model = {
								default = "phi-4", -- define llm model to be used
							},
						},
					})
				end,
			},
			extensions = {
				--vectorcode = {
				--	opts = {
				--		add_tool = true,
				--		add_slash_command = true,
				--		---@type VectorCode.CodeCompanion.ToolOpts
				--		tool_opts = {
				--			max_num = { chunk = -1, document = -1 },
				--			default_num = { chunk = 50, document = 10 },
				--			include_stderr = false,
				--			use_lsp = false,
				--			auto_submit = { ls = false, query = false },
				--			ls_on_start = false,
				--			no_duplicate = true,
				--			chunk_mode = false,
				--		},
				--	},
				--},
			},
		}
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
}
