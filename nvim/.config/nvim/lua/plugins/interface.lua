return {
  -- Colour Scheme
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false -- Don't lazy load
  },

  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = 'catppuccin'
      }
    }
  },

  -- Use tab bar for displaying buffers
  {
    'akinsho/bufferline.nvim',
    config = true
  },

  -- Vertical lines marking indentation
  'lukas-reineke/indent-blankline.nvim',

  -- Move consistently between windows in Tmux & Vim
  'christoomey/vim-tmux-navigator',

  -- Show help for key bindings
  {
    'folke/which-key.nvim',
    config = true
  },

  -- File explorer
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = 'kyazdani42/nvim-web-devicons',
    keys = {
      {'<leader>ne', '<cmd>NvimTreeToggle<cr>', {desc = 'nvim-tree', noremap = true, silent = true}},
    },
    opts = {
      update_cwd = true,

      update_focused_file = {
        enable = true,
        update_cwd = true
      },

      disable_netrw = false,

      filters = {
        dotfiles = true,
        custom = {}
      },
    }
  },

  -- Diagnostic Viewer
  {
    'folke/trouble.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons', 'folke/lsp-colors.nvim'},
    config = true
  },
 }
