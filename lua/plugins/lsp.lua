return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "williamboman/mason.nvim", config = true },
    { "williamboman/mason-lspconfig.nvim", config = true },
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = {
        "astro",
        "eslint",
        "prismals",
        "sqlls",
        "html",
        "cssls",
        "jsonls",
        "tailwindcss",
        "emmet_ls",
        "ts_ls",
        "svelte",
        "yamlls",
        "bashls"
      },
    })

    -- Cargar automáticamente cada LSP instalado
    local lspconfig = require("lspconfig")
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({})
      end,
    })
  end,
}
