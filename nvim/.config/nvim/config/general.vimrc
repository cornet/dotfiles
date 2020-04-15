filetype plugin indent on
syntax enable

" Revert annoying nvim defaults
set noincsearch
set mouse=
set clipboard+=unnamedplus

" Live find/replace
set inccommand=nosplit

" Use , rather than \ for mapleader
let mapleader = ","
let g:mapleader = ","

" Quick editing/reload of ~/.vimrc
map <leader>s :source ~/.config/nvim/init.vim<cr>
map <leader>e :e! ~/.config/nvim/init.vim<cr>
autocmd! bufwritepost nvimrc source ~/.config/nvim/init.vim

" Stop leaving .swp files all over the place
set directory=~/.vimtmp
set backupdir=~/.vimtmp

" Always show tab line
set stal=2

set wildmenu
set ruler
set noerrorbells
set novisualbell
set t_vb=
set tags+=~/.vim/systags

" Make backspace behave properly
set backspace=eol,start,indent

" Tabwidth options
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

au FileType ruby  setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au FileType eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au FileType perl  setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
