return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = "dev-v3",
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    }
  },
  -- Other Completions
  'hrsh7th/cmp-cmdline',

  -- LSP Symbols Bar
  {
    'simrat39/symbols-outline.nvim',
    config = true,
  },

  --
  -- Snippets
  --
  {
    'L3MON4D3/LuaSnip',
    config = function()
      require('luasnip/loaders/from_vscode').lazy_load()
    end
  },
  'rafamadriz/friendly-snippets',


  -- Linting
  {
    'mfussenegger/nvim-lint',
    config = function()
      -- Most linters are installed and configured by Mason.nvim
      -- however some don't work for various reasons.
      require('lint').linters_by_ft = {
        sh = {'shellcheck'} -- Mason one doesn't work on M1 Macs
      }
    end,

    init = function()
      vim.cmd([[
      au BufWritePost * lua require('lint').try_lint()
      ]])
    end,
  },
}
