local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          root_dir = util.find_git_ancestor,
          settings = {
            workingDirectory = {
              mode = "auto",
            },
          },
        },
        intelephense = {
          init_options = {
            licenceKey = "/Users/roald/.dotfiles/intelephense-license.txt",
          },
        },
      },
    },
  },
}
