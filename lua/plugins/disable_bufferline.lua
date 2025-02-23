return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        numbers = "buffer_id", -- Muestra los números de buffer
        diagnostics = "nvim_lsp", -- Muestra errores de LSP en la barra de buffers
        show_buffer_close_icons = true, -- Mostrar iconos de cerrar buffer
        show_close_icon = true, -- Mostrar icono de cerrar en la barra
        persist_buffer_sort = true, -- Mantener el orden de buffers al cambiar
        enforce_regular_tabs = false, -- No forzar un número fijo de pestañas
        max_name_length = 30, -- Nombre máximo del buffer
        max_prefix_length = 20, -- Prefijo máximo antes del nombre del buffer
        truncate_names = false, -- No cortar los nombres de los buffers
        tab_size = 18, -- Tamaño de cada buffer en la barra
        show_tab_indicators = true, -- Mostrar indicador de pestaña activa
        separator_style = "slant", -- Estilo del separador de pestañas
        always_show_bufferline = true, -- Siempre mostrar la barra de buffers
        offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left" } },
      },
    },
  },
}
