return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = opts.sources or {}
    -- table.insert(opts.sources, nls.builtins.formatting.phpcsfixer)
    table.insert(opts.sources, nls.builtins.diagnostics.phpcs)

    opts.sources = vim.tbl_filter(function(name)
      return not vim.tbl_contains({ "phpcs" }, name)
    end, opts.sources)
  end,
}
