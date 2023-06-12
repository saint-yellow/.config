-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "qa", ":qa", { desc = "Quit Neovim", noremap = true, silent = true })

keymap.set("i", "<C-h>", "<Left>", { desc = "Move cursor LEFT in Insert mode", noremap = true, silent = true })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move cursor DOWN in Insert mode", noremap = true, silent = true })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move cursor UP in Insert mode", noremap = true, silent = true })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move cursor RIGHT in Insert mode", noremap = true, silent = true })
