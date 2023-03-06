return {
  --
  -- TreeSitter
  --
  { 
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        'bash',
        'dockerfile',
        'go',
        'hcl',
        'json',
        'lua',
        'markdown',
        'ruby',
        'sql',
        'yaml',
        'vim',
      },
      highlight = {
        enable = true,  -- Enable syntax highlighting for everything
      },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
  'nvim-treesitter/playground',
}
