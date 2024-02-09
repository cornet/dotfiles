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
     event = "VeryLazy",
     init = function()
       vim.o.timeout = true
       vim.o.timeoutlen = 300
     end,
     opts = {}
   },

  -- File explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        's1n7ax/nvim-window-picker',
        version = '2.*',
        config = function()
          require 'window-picker'.setup({
            filter_rules = {
              include_current_win = false,
              autoselect_one = true,
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal', "quickfix" },
              },
            },
          })
        end,
      },
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
          },
          follow_current_file = {
            enabled = true,
            leave_dirs_open = true
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
      { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
      { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
      { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
      { "gR", "<cmd>Trouble lsp_references", desc = "LSP References (Trouble)"},
    },
    dependencies = { 'nvim-tree/nvim-web-devicons', 'folke/lsp-colors.nvim'},
    config = true
  },
 }
