return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")
    opts.sources = vim.list_extend(opts.sources or {}, {
      null_ls.builtins.diagnostics.eslint, -- Usar ESLint con ts-standard
      null_ls.builtins.formatting.prettier, -- Formateo con Prettier
    })
  end,
}
