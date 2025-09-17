return {
  "mason-org/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = vim.tbl_filter(function(name)
      return not vim.tbl_contains({ "phpcs" }, name)
    end, opts.ensure_installed)
  end,
}
