filetype plugin indent on
syntax enable

" Revert annoying nvim defaults
set noincsearch
set mouse=a
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

" Always show file tabs line
set showtabline=2

" Enable wildmenu
set wildmenu

" Show col/row location in status bar
set ruler

" Disable all error notifications
set noerrorbells
set novisualbell
set t_vb=

" Make backspace behave properly
set backspace=eol,start,indent

" Spellcheck
set spell spelllang=en_gb
set complete+=kspell

" Tabwidth options
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

au FileType ruby  setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au FileType eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au FileType perl  setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" Omnicomplete
"  - Always show menu even if single match
"  - Show preview/info window if there is one
"  - Don't select first option
"    (Would prefer longest but it appears to have a bug which will
"     delete already typed word when completing :( )
set completeopt=menuone,preview,noselect

" Hide Omnicomplete Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Hide buffers instead closing
" (Required for LanguageClient-neovim)
set hidden
