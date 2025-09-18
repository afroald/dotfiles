local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          init_options = { hostInfo = "neovim" },
        },
      },
    },
  },
}
