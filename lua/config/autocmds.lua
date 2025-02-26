-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell"



vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.astro", "*.tsx", "*.ts", "*.js", "*.jsx" },
  callback = function()
    -- Verificar si hay un LSP activo antes de intentar formatear
    local clients = vim.lsp.get_active_clients({ bufnr = 0 })
    if #clients > 0 then
      vim.lsp.buf.format({ async = false }) -- Ejecuta el formateo solo si hay un LSP activo
    end
  end,
})
