return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --
  -- Interface Plugins
  --
  -- Colourschems
  use 'chriskempson/base16-vim'
  use 'folke/tokyonight.nvim'
  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    config = function() require('lualine').setup{
      options = {
        theme = 'onedark'
      }
    } end
  }
  -- Use tab bar for displaying buffers
  use {
    'akinsho/bufferline.nvim',
    config = function() require('bufferline').setup{} end
  }
  -- Vertical lines marking indentation
  use "lukas-reineke/indent-blankline.nvim"

  -- Move consistently between windows in Tmux & Vim
  use 'christoomey/vim-tmux-navigator'
  -- Show help for key bindings
  use {
    "folke/which-key.nvim",
    config = function() require("which-key").setup{} end
  }
  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-tree').setup {
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
    end
  }
  --
  -- General editing utilities
  --
  -- Auto complete brackets etc..
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup{} end
  }
  -- Easy align text
  use 'godlygeek/tabular'
  -- Search & display in quickfix
  use {
    'mileszs/ack.vim',
    config = [[vim.g.ackprg = 'rg --vimgrep']]
  }
  -- Completion Menu
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  --
  -- Telescope
  --
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  --
  -- TreeSitter
  --
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'

  --
  -- Project & Session Management
  --
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {}
      require('telescope').load_extension('projects')
    end
  }  
  --
  -- Language Server Client
  --
  use 'neovim/nvim-lspconfig'
  use {
    "folke/trouble.nvim",
    requires = { "kyazdani42/nvim-web-devicons", 'folke/lsp-colors.nvim'},
    config = function()
      require("trouble").setup {}
    end
  }
  -- LSP Symbols Bar
  use {
    'simrat39/symbols-outline.nvim',
    config = [[
    vim.g.symbols_outline = {
      auto_preview = false
    }
    ]]
  }
  use 'mfussenegger/nvim-lint'
  --
  -- Snippets
  --
  use {
    "L3MON4D3/LuaSnip",
    wants = "friendly-snippets",
    config = function()
      require("luasnip/loaders/from_vscode").lazy_load()
    end
  }
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"

  --
  -- Git integration
  --
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'tpope/vim-rhubarb'

  --
  -- Language specific
  --
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  use {
    'hashivim/vim-terraform',
    config = [[vim.g.terraform_fmt_on_save = 1]]
  }
  use {
    'vim-ruby/vim-ruby',
    requires = {{'kana/vim-textobj-user'},{'nelstrom/vim-textobj-rubyblock'}}
  }
  --
  -- Vimwiki!
  --
  use 'vimwiki/vimwiki'
  use 'mattn/calendar-vim'
end)
