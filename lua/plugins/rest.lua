return {
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = { "http" }, -- Cargar solo en archivos .http
  config = function()
    require("rest-nvim").setup({
      client = {
        use_curl = true,  -- Forzar uso de curl
        bin_path = "/usr/bin/curl", -- Ruta de curl en macOS (verifica con `which curl`)
      },
    })

    -- Configuración de atajos de teclado
    vim.keymap.set("n", "<leader>rr", "<cmd>Rest run<CR>", { desc = "Ejecutar petición HTTP" })
    vim.keymap.set("n", "<leader>rl", "<cmd>Rest last<CR>", { desc = "Ejecutar última petición HTTP" })
    vim.keymap.set("n", "<leader>rp", "<cmd>Rest run<CR>", { desc = "Ejecutar petición y mostrar respuesta" }) -- Eliminamos `require().run()`
  end,
}
