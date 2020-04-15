" neomake:
" Auto-run Neomake on save
autocmd! bufwritepost * Neomake

" Fix neomake puppet parser maker
let g:neomake_puppet_puppet_maker = {
			\ 'exe': 'puppet',
			\ 'args': ['parser', 'validate', '--color=false'],
			\ 'errorformat': '%t%*[a-zA-Z]: %m at %f:%l',
			\ }

let g:neomake_puppet_enable_makers = ['puppet']


" nerdtree:
" Change dir whenever root changes
let NERDTreeChDirMode=2


" vimwiki:
" Set path to wiki
let g:vimwiki_list = [{'path': '~/Documents/vimwiki', 'syntax': 'markdown', 'ext': '.md', 'nested_syntaxes': {'ruby': 'ruby'}}]
let g:vimwiki_global_ext = 0
let g:vimwiki_auto_chdir = 1

" airline:
" Always display airline with dark theme
set laststatus=2
let g:airline_theme='base16_chalk'

" Clear out default symbols and load new ones
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" vim-textobj-rubyblock:
" Required for textobj-rubyblock
runtime macros/matchit.vim


" ultisnips:
" Use tab/shift-tab to navigate between tabstops
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" easytags:
let g:easytags_dynamic_files = 1
let g:easytags_events = ['BufWritePost']
let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
    \}


" fzf:
if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif
let g:fzf_command_prefix = 'Fzf'

" ack:
let g:ackprg = 'rg --vimgrep'

" terraform
autocmd BufNewFile,BufRead *.hcl set ft=terraform
autocmd BufNewFile,BufRead *.hcl set ts=2
autocmd BufNewFile,BufRead *.hcl set expandtab
let g:terraform_fmt_on_save = 0

" deoplete
" let g:deoplete#enable_at_startup = 1
" call deoplete#initialize()

" Disable gutentags for git commit/rebase files
au FileType gitcommit,gitrebase let g:gutentags_enabled

" Place tags files in ~/.vimtmp
let g:gutentags_cache_dir = '~/.vimtmp'
