return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"bash",
				"diff",
				"html",
				"javascript",
				"json5",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"query",
				"typescript",
				"vim",
				"vimdoc",
			},
			autoinstall = true,
			highlight = { enable = true, additional_vim_regex_highlighting = { "ruby" } },
			indent = { enable = true, disable = { "ruby" } },
		})
	end,
}
