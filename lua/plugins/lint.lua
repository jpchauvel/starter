return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft.python = { "ruff", "mypy" }
    end,
  },
}
