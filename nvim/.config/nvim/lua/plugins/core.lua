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
    },
  },
}
