-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights" })
keymap.set("n", "x", '"_x', { desc = "delete single character without copying into register" })
