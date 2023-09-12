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
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
      {'<leader>ne', '<cmd>Neotree toggle<cr>', {desc = 'nvim-tree', noremap = true, silent = true}},
    },
    config = function ()
      require("neo-tree").setup({
        filesystem = {
          find_command = "fd",
          find_args = {
            fd = {
              "--exclude",
              ".git",
              "--exclude",
              "node_modules",
            },
          }
        },
        window = {
          mappings = {
            ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
            ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
            ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
          },
        },
      })
    end
  },

  -- Diagnostic Viewer
  {
    'folke/trouble.nvim',
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
      { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Trouble" },
      { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
      { "<leader>xd", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
      { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
      { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
      { "gR", "<cmd>Trouble lsp_references", desc = "LSP References (Trouble)"},
    },
    dependencies = { 'nvim-tree/nvim-web-devicons', 'folke/lsp-colors.nvim'},
    config = true
  },
 }
