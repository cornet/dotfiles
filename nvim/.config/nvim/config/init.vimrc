" These must come before vundle
set nocp
filetype off
"
" Plugin Management
"
call plug#begin('~/.config/nvim/plugged')
" 
" Interface Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

" Vimwiki!
Plug 'vimwiki/vimwiki'

" Git integration
Plug 'tpope/vim-fugitive'

" General code editing plugins
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'xolox/vim-misc'
Plug 'majutsushi/tagbar'
Plug 'benekastah/neomake'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mileszs/ack.vim'

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

" Syntax highlighting
Plug 'wellbredgrapefruit/tomdoc.vim'

" Colourschems
Plug 'chriskempson/base16-vim'

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

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

" my-vim-snippets
Plug 'cornet/my-vim-snippets'

" vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
