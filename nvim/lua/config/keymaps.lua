-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

-- close current buffer
set("n", "xc", "<cmd>bp<bar>sp<bar>bn<bar>bd<cr>", { desc = "Close current buffer", noremap = true, silent = false })
