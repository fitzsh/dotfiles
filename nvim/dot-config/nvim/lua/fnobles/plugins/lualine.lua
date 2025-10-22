local lazy_status = require("lazy.status")

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "catppuccin",
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_x = {
				{
					lazy_status.updates,
					cond = lazy_status.has_updates,
				},
				{ "encoding" },
				{ "fileformat" },
				{ "filetype" },
			},
		},
	},
}
