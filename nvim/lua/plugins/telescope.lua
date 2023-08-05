local util = require("lazyvim.util")

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader><space>", util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
    },
  },
}
