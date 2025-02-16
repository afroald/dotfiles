local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          init_options = { hostInfo = "neovim" },
          root_dir = util.find_git_ancestor,
        },
        eslint = {
          root_dir = util.find_git_ancestor,
          settings = {
            workingDirectory = {
              mode = "auto",
            },
          },
        },
      },
    },
  },
}
