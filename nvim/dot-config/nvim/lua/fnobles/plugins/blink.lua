return {
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"MahanRahmati/blink-nerdfont.nvim",
		},
		version = "1.*",
		opts = {
			keymap = {
				preset = "default",
			},
			appearance = {
				nerd_font_variant = "normal",
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer", "nerdfont" },
				providers = {
					nerdfont = {
						module = "blink-nerdfont",
						name = "Nerd Fonts",
						score_offset = 15, -- Tune by preference
						opts = { insert = true }, -- Insert nerdfont icon (default) or complete its name
					},
				},
			},
			completion = {
				accept = { auto_brackets = { enabled = true } },
				documentation = { auto_show = true },
				list = { selection = { preselect = true } },
			},
		},
		signature = { enabled = true },
		opts_extend = { "sources.default" },
	},
}
