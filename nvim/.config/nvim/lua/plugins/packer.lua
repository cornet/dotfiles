return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colourschems
  use 'chriskempson/base16-vim'

  -- Interface Plugins
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Use tab bar for displaying buffers
  use 'akinsho/bufferline.nvim'

  -- vim-tmux-navigator
  use 'christoomey/vim-tmux-navigator'

  -- File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
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
  use 'mileszs/ack.vim'

  -- Snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'cornet/my-vim-snippets'

  -- Language Server Client
  use 'neovim/nvim-lspconfig'

  -- Git integration
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  -- Language helpers
  use { 'fatih/vim-go', run = ':GoUpdateBinaries' }
  use 'hashivim/vim-terraform'

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
