return {
	-- Ensure C/C++ debugger is installed
	"mason-org/mason.nvim",
	opts = { ensure_installed = { "clangd", "codelldb" } },
}
