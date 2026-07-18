-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "i", "v" }, "<RightMouse>", "<Nop>") -- disable default right-click behavior
vim.keymap.set("n", "<RightMouse>", '"+p', { noremap = true, silent = true })
vim.keymap.set("i", "<RightMouse>", "<C-r>+", { noremap = true, silent = true })
