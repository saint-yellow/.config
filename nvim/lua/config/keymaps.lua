-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local util = require("util")
local map = util.keymap

map("i", "<C-h>", "<Left>", { desc = "Move cursor LEFT in Insert mode", noremap = true, silent = true })
map("i", "<C-j>", "<Down>", { desc = "Move cursor DOWN in Insert mode", noremap = true, silent = true })
map("i", "<C-k>", "<Up>", { desc = "Move cursor UP in Insert mode", noremap = true, silent = true })
map("i", "<C-l>", "<Right>", { desc = "Move cursor RIGHT in Insert mode", noremap = true, silent = true })

map("n", "<leader>x", "<cmd>bp<bar>sp<bar>bn<bar>bd<cr>",
    { desc = "Close current buffer", noremap = true, silent = true })
