return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        hcl = { "terragrunt_hclfmt" },
      },
      formatters = {
        shfmt = {
          prepend_args = { "--indent", "2", "--case-indent" },
        },
      },
    },
  },
}
