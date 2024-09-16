-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- map("", "<leader>gd", ":Gvdiffsplit<cr>", default_opts)
map("", "<leader>gs", ":Neogit kind=auto<cr>", default_opts)
-- map("", "<leader>gl", ":Gclog<cr>", default_opts)
-- map("", "<leader>gb", ":GBrowse<cr>", default_opts)
-- map("", "<leader>ga", ":Git add %:p<cr><cr>", default_opts)
-- map("", "<leader>gc", ":G commit -v -q<cr>", default_opts)
