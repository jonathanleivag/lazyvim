-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "<CR>", "<C-G>u<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "go", function()
  local filepath = vim.fn.expand("%:p:h") -- Obtiene la carpeta del archivo actual
  vim.cmd("silent !open " .. filepath)
end, { desc = "Abrir carpeta en Finder" })

vim.keymap.set("n", "gI", function()
  local filepath = vim.fn.expand("%:p") -- Obtiene la ruta completa del archivo
  vim.cmd("silent !open " .. filepath)
end, { desc = "Abrir en app predeterminada" })


vim.keymap.set("n", "<leader>k", ":m-2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>j", ":m+1<CR>", { noremap = true, silent = true })
