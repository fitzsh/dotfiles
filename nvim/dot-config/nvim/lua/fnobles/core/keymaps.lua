vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })
keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })

keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up, center cursor" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down, center cursor" })
