return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "http", -- Asegurar que se instale el parser HTTP
      "json",
      "lua",
      "bash",
    },
    highlight = { enable = true },
  },
}
