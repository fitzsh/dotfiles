return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {
			options = {
				themable = true,
				diagnostics = "nvim_lsp",
				offsets = {
					{
						filetype = "snacks_layout_box",
						text = "󰙅  File Explorer",
						separator = true,
					},
				},
				separator_style = "slant",
			},
		},
	},
}
