return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colourschems
  use 'chriskempson/base16-vim'

  -- Interface Plugins
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Use tab bar for displaying buffers
  use {
    'akinsho/bufferline.nvim',
    config = function() require('bufferline').setup{} end
  }

  -- vim-tmux-navigator
  use 'christoomey/vim-tmux-navigator'

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-tree').setup() end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- TreeSitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'

  -- Search & display in quickfix
  use {
    'mileszs/ack.vim',
    config = [[vim.g.ackprg = 'rg --vimgrep']]
  }

  -- Snippets
  use {
    'SirVer/ultisnips',
    config = {
      -- Use tab/shift-tab to navigate between tabstops
      [[vim.g.UltiSnipsExpandTrigger = "<tab>"]],
      [[vim.g.UltiSnipsJumpForwardTrigger = "<tab>"]],
      [[vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"]],
    },
  }
  use 'honza/vim-snippets'
  use 'cornet/my-vim-snippets'

  -- Language Server Client
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'

  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Git integration
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  -- Language helpers
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  use {
    'hashivim/vim-terraform',
    config = [[vim.g.terraform_fmt_on_save = 1]]
  }

  use {
    'vim-ruby/vim-ruby',
    requires = {{'kana/vim-textobj-user'},{'nelstrom/vim-textobj-rubyblock'}}
  }

  -- Vimwiki!
  use 'vimwiki/vimwiki'
  use 'mattn/calendar-vim'

  --[[

  -- Async linting & make framework
  use 'benekastah/neomake'

  -- Async competion framework
  use { 'Shougo/deoplete.nvim', run = ':UpdateRemotePlugins' }

  -- Auto close brackets, quotes & structures
  use 'tmsvg/pear-tree'
  use 'tpope/vim-endwise'

  -- Text alignment
  use 'godlygeek/tabular'

  -- ctags integration
  use 'majutsushi/tagbar'
  use 'ludovicchabant/vim-gutentags'

  -- Ruby/Puppet Plugins
  use 'cornet/vim-puppet'

  -- Terraform
  -- This isn't really a plugin just a collection of snipmate snippets.
  -- Ultisnip will load snipmate snippets only if they are in a directory
  -- called 'snippets' of a plugin.
  -- use 'juliosueiras/vim-terraform-snippets', {
  --   \ 'as': 'vim-terraform-snippets-dummy-plugin',
  --   \ 'dir': '~/.config/nvim/plugged/vim-terraform-snippets/snippets',
  --   \ 'on': [],
  --   \ }
  -- use '~/.config/nvim/plugged/vim-terraform-snippets'


--]]
--
end)
