return {
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
    keys = {
      { "<leader>cg", ":lua require('neogen').generate()<cr>", desc = "Generate annotations" }
    }
  }
}
