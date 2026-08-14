-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Toggle Snacks Explorer with Ctrl+n

vim.keymap.set("n", "<C-n>", function()
  Snacks.explorer()
end, { desc = "Toggle Explorer" })

vim.keymap.set("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

pcall(vim.keymap.del, "n", "<leader>sg")
vim.keymap.set("n", "<leader>fw", function() Snacks.picker.grep() end, { desc = "Grep (Live Grep)" })
