-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set;

-- a variation of the <leader>ss built-in to show symbols that only shows methods (no variable names)
-- may be better in the plugins/telescope.lua as a `keys` instead of here
map("n", "-", function()
  require("telescope.builtin").lsp_document_symbols({symbols={"method","function"}})
end
)

map("n", "<leader>it", function()
  local time = os.date("%H:%M ")
  vim.api.nvim_put({time}, "c", true, true)
end, { desc = "Insert time - HH:mm" }) 
