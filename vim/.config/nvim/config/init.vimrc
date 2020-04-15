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
Plug 'tomasr/molokai'
Plug 'chriskempson/base16-vim'
Plug 'mileszs/ack.vim'

" Simplenote
" Plug 'mrtazz/simplenote.vim'

" deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Terraform
Plug 'hashivim/vim-terraform'
" Plug 'juliosueiras/vim-terraform-completion'

" tim-mux-navigator
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
