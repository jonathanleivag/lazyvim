return {
  "folke/snacks.nvim",
  opts = {
    bigfile = { enabled = true },
    dashboard = { 
      enabled = true,
      preset = {
        header = [[

████████╗██╗░░░██╗  ██████╗░██╗░░░██╗███████╗██████╗░███████╗░██████╗░░░
╚══██╔══╝██║░░░██║  ██╔══██╗██║░░░██║██╔════╝██╔══██╗██╔════╝██╔════╝░░░
░░░██║░░░██║░░░██║  ██████╔╝██║░░░██║█████╗░░██║░░██║█████╗░░╚█████╗░░░░
░░░██║░░░██║░░░██║  ██╔═══╝░██║░░░██║██╔══╝░░██║░░██║██╔══╝░░░╚═══██╗░░░
░░░██║░░░╚██████╔╝  ██║░░░░░╚██████╔╝███████╗██████╔╝███████╗██████╔╝██╗
░░░╚═╝░░░░╚═════╝░  ╚═╝░░░░░░╚═════╝░╚══════╝╚═════╝░╚══════╝╚═════╝░╚═╝
        ]],
      }
    },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    picker = {
     sources = {
       explorer = {
          -- auto_close= true,
          hidden = true,
          ignored = true,
          follow = true,
          position = "bottom",
       }
     }
    }
  },
}
