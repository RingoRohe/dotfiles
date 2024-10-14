-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- nmap <C-PageUp> ddkP
-- nmap <C-PageDown> ddp
vim.keymap.set("n", "<C-PageUp>", "ddkP")
vim.keymap.set("n", "<C-PageDown>", "ddp")
