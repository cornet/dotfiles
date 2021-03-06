" These must come before vundle
set nocp
filetype off
"
" Plugin Management
"
call plug#begin('~/.config/nvim/plugged')
" Interface Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'scrooloose/nerdtree'

" Colourschems
Plug 'chriskempson/base16-vim'

" Async linting & make framework
Plug 'benekastah/neomake'

" Async competion framework
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Vimwiki!
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Auto close brackets, quotes & structures
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-endwise'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'cornet/my-vim-snippets'

" Text alignment
Plug 'godlygeek/tabular'

" ctags integration
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'

" Search & display in quickfix
Plug 'mileszs/ack.vim'

" Language Server Client
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Ruby/Puppet Plugins
Plug 'vim-ruby/vim-ruby'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'cornet/vim-puppet'

" Go
Plug 'fatih/vim-go'

" Terraform
Plug 'hashivim/vim-terraform'
" This isn't really a plugin just a collection of snipmate snippets.
" Ultisnip will load snipmate snippets only if they are in a directory
" called 'snippets' of a plugin.
Plug 'juliosueiras/vim-terraform-snippets', {
      \ 'as': 'vim-terraform-snippets-dummy-plugin',
      \ 'dir': '~/.config/nvim/plugged/vim-terraform-snippets/snippets',
      \ 'on': [],
      \ }
Plug '~/.config/nvim/plugged/vim-terraform-snippets'

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'LumaKernel/fern-mapping-fzf.vim'
Plug 'hrsh7th/fern-mapping-collapse-or-leave'

" vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
