return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	config = function()
		local markview = require("markview")
		local presets = require("markview.presets")
		markview.setup({
			enable = true,
			preview = {
				icon_provider = "devicons",
			},
			markdown = {
				headings = presets.headings.glow,
			},
		})
	end,
	-- Completion for `blink.cmp`
	-- dependencies = { "saghen/blink.cmp" },
}
