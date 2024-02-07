return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = { "windwp/nvim-ts-autotag" },
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"yaml",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"dockerfile",
				"gitignore",
				"rust",
				"java",
				"php",
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },

		})
	end
}
