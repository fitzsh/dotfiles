return {
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				"~/.config/nvim",
			},
		},
	},
	{ -- optional blink completion source for require statements and module annotations
		"saghen/blink.cmp",
		version = "1.*",
		opts = {
			sources = {
				-- add lazydev to your completion providers
				default = { "lazydev", "lsp", "path", "snippets", "buffer" },
				providers = {
					lazydev = {
						name = "LazyDev",
						module = "lazydev.integrations.blink",
					},
				},
			},
		},
	},
}
