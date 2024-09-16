-- Taken from https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/ruby.lua
-- but switched out solargraph for ruby-lsp
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ruby",
      })
    end,
  },
  {
    "RRethy/nvim-treesitter-endwise",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        endwise = {
          enable = true,
        },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "ruby-lsp",
        "rubocop",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { "/Users/nathanhoward/.local/share/mise/shims/ruby-lsp" },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "suketa/nvim-dap-ruby",
      config = function()
        require("dap-ruby").setup()
      end,
    },
  },
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "olimorris/neotest-rspec",
    },
    opts = {
      adapters = {
        ["neotest-rspec"] = {
          -- NOTE: By default neotest-rspec uses the system wide rspec gem instead of the one through bundler
          rspec_cmd = function()
            return vim.tbl_flatten({
              "bundle",
              "exec",
              "rspec",
            })
          end,
        },
      },
    },
  },
}
