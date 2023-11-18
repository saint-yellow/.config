-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local map = Util.safe_keymap_set

-- close current buffer
map("n", "xc", "<cmd>bp<bar>sp<bar>bn<bar>bd<cr>", { desc = "Close current buffer", noremap = true, silent = false })

-- Resize window using <ctrl> arrow keys
