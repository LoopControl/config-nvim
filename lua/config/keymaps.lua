-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- insert current time
map("n", "<leader>it", function()
  local time = os.date("%H:%M ")
  vim.api.nvim_put({ time }, "c", true, true)
end, { desc = "Insert time - HH:mm" })
