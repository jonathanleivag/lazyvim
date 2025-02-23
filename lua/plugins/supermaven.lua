return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>", -- Acepta la sugerencia
        clear_suggestion = "<C-]>", -- Borra la sugerencia
        accept_word = "<C-j>", -- Acepta una palabra de la sugerencia
      },
      ignore_filetypes = { "bigfile", "snacks_input", "snacks_notif" },
      disable_inline_completion = vim.g.ai_cmp, -- Desactiva el autocompletado inline si está activado otro AI
    })
  end,
}
