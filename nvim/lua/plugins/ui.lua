return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "no information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  -- animations
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  --logout
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
       ████████╗██╗  ██╗██╗██╗      █████╗ ██╗  ██╗██████╗ ███████╗██████╗ ██████╗ ██╗   ██╗██╗   ██╗
       ╚══██╔══╝██║  ██║██║██║     ██╔══██╗██║ ██╔╝██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝╚██╗ ██╔╝
          ██║   ███████║██║██║     ███████║█████╔╝ ██████╔╝█████╗  ██║  ██║██║  ██║ ╚████╔╝  ╚████╔╝ 
          ██║   ██╔══██║██║██║     ██╔══██║██╔═██╗ ██╔══██╗██╔══╝  ██║  ██║██║  ██║  ╚██╔╝    ╚██╔╝  
          ██║   ██║  ██║██║███████╗██║  ██║██║  ██╗██║  ██║███████╗██████╔╝██████╔╝   ██║      ██║   
          ╚═╝   ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚═════╝    ╚═╝      ╚═╝   
                                                                                                   
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
