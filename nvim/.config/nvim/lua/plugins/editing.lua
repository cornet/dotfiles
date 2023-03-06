return {
  -- Auto complete brackets etc..
  {
    'windwp/nvim-autopairs',
    config = true
  },

  -- Easy align text
  'godlygeek/tabular',

  -- Search & display in quickfix
  {
    'mileszs/ack.vim',
    cmd = 'Ack',
    keys = {
      {'<leader>a', ':Ack!<Space>', {desc = 'Ack'}}
    },
    config = function()
      vim.g.ackprg = 'rg --vimgrep'
      vim.g.ack_qhandler = 'TroubleToggle quickfix'
    end
  },

  -- Yankring
  {
    "gbprod/yanky.nvim",
    config = true
  },

  -- Add substitue command
  {
    "gbprod/substitute.nvim",
    dependencies = {
      'gbprod/yanky.nvim',
    },
    config = function()
      require("substitute").setup({
        on_substitute = require("yanky.integration").substitute()
      })
    end
  },
}
