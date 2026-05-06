return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },

  -- Disable displaying of diagnostics inline
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        terraformls = {},
      },
      setup = {
        terraformls = function(_, opts)
          -- workaround for terraform-ls sending invalid semantic tokens
          -- https://github.com/hashicorp/terraform-ls/issues/2094
          Snacks.util.lsp.on({ name = "terraformls" }, function(_, client)
            client.server_capabilities.semanticTokensProvider = nil
          end)
          -- end workaround
        end,
      },
    },
  },
}
