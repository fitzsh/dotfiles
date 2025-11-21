--[[
██╗  ██╗███████╗██╗   ██╗███╗   ███╗ █████╗ ██████╗ ███████╗
██║ ██╔╝██╔════╝╚██╗ ██╔╝████╗ ████║██╔══██╗██╔══██╗██╔════╝
█████╔╝ █████╗   ╚████╔╝ ██╔████╔██║███████║██████╔╝███████╗
██╔═██╗ ██╔══╝    ╚██╔╝  ██║╚██╔╝██║██╔══██║██╔═══╝ ╚════██║
██║  ██╗███████╗   ██║   ██║ ╚═╝ ██║██║  ██║██║     ███████║
╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚══════╝
--]]

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })

keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up, center cursor" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down, center cursor" })

keymap.set("n", "*", "*zz", { desc = "Find next occurrence of word under cursor" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- clipboard
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights on search" })

-- Close floating terminal/popups with Ctrl-Space
keymap.set("t", "<C-Space>", "<C-\\><C-n>:close<CR>", { desc = "Close terminal/popup" })
-- keymap.set("n", "<C-Space>", ":close<CR>", { desc = "Close window/popup" })

-- bufferline tabs
keymap.set("n", "<leader>tt", "<Cmd>BufferLinePick<Cr>", {
	desc = "Pick tab in Bufferline",
	noremap = true,
	silent = true,
})

keymap.set("n", "<leader>t[", "<Cmd>BufferLineCyclePrev<Cr>", {
	desc = "Select previous tab in Bufferline",
	noremap = true,
	silent = true,
})

keymap.set("n", "<leader>t]", "<Cmd>BufferLineCycleNext<Cr>", {
	desc = "Select next tab in Bufferline",
	noremap = true,
	silent = true,
})

keymap.set("n", "<leader>tx", "<Cmd>BufferLinePickClose<Cr>", {
	desc = "Pick tab to close in Bufferline",
	noremap = true,
	silent = true,
})

keymap.set("n", "<leader>tc[", "<Cmd>BufferLineCloseLeft<Cr>", {
	desc = "Close all visible tabs to the left of the current tab in Bufferline",
	noremap = true,
	silent = true,
})

keymap.set("n", "<leader>tc]", "<Cmd>BufferLineCloseRight<Cr>", {
	desc = "Close all visible tabs to the right of the current tab in Bufferline",
	noremap = true,
	silent = true,
})

keymap.set("n", "<leader>tca", "<Cmd>BufferLineCloseOthers<Cr>", {
	desc = "Close all other visible tabs in Bufferline",
	noremap = true,
	silent = true,
})

keymap.set("n", "<leader>tp", "<Cmd>BufferLineTogglePin<Cr>", {
	desc = "Toggle pinned tab in Bufferline",
	noremap = true,
	silent = true,
})
