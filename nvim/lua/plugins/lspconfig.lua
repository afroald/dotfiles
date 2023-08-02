local util = require("lspconfig.util")

local function organize_imports()
  vim.lsp.buf.execute_command({
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
    title = "",
  })
end

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
        tsserver = {
          commands = {
            OrganizeImports = {
              organize_imports,
              description = "Organize Imports",
            },
          },
        },
      },
    },
    setup = {
      tsserver = function()
        commands = {
          OrganizeImports = {
            organize_imports,
            description = "Organize Imports",
          },
        }
      end,
    },
  },
}
