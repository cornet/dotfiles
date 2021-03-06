"" neomake:
" Auto-run Neomake on save
autocmd! bufwritepost * Neomake

" Fix neomake puppet parser maker
let g:neomake_puppet_puppet_maker = {
			\ 'exe': 'puppet',
			\ 'args': ['parser', 'validate', '--color=false'],
			\ 'errorformat': '%t%*[a-zA-Z]: %m at %f:%l',
			\ }

let g:neomake_puppet_enable_makers = ['puppet']


"" nerdtree:
" Change dir whenever root changes
let NERDTreeChDirMode=2


"" vimwiki:
" Set path to wiki
" auto_tags: update tags file on save
" auto_toc: rebuild table of contents on save
let g:vimwiki_list = [{
      \ 'path': '~/Documents/vimwiki',
      \ 'syntax': 'markdown',
      \ 'ext': '.md',
      \ 'nested_syntaxes': {'ruby': 'ruby', 'bash': 'sh', 'terraform': 'terraform', 'json': 'json'},
      \ 'auto_tags': 1,
      \ 'auto_toc': 1,
      \ 'auto_diary_index': 1
      \ },{
      \ 'path': '~/Documents/vimwiki-fa',
      \ 'syntax': 'markdown',
      \ 'ext': '.md',
      \ 'nested_syntaxes': {'ruby': 'ruby', 'bash': 'sh', 'terraform': 'terraform', 'json': 'json'},
      \ 'auto_tags': 1,
      \ 'auto_toc': 1
      \ }]
" Don't associate all .md files with vimwiki
let g:vimwiki_global_ext = 0
" Change to current wiki dir
let g:vimwiki_auto_chdir = 1
" Add header title when creating page
let g:vimwiki_auto_header = 0
" Alternate header colours
let g:vimwiki_hl_headers = 1
let g:vimwiki_table_mappings=0


"" airline:
" Always display airline with dark theme
set laststatus=2
let g:airline_theme='onedark'

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


"" vim-textobj-rubyblock:
" Required for textobj-rubyblock
runtime macros/matchit.vim


"" ultisnips:
" Use tab/shift-tab to navigate between tabstops
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"" tagbar
let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
    \}


"" fzf:
if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif
let g:fzf_command_prefix = 'Fzf'


"" ack
" User ripgrep
let g:ackprg = 'rg --vimgrep'


"" vim-terraform
" Highlight .hcl files as if they were terraform
autocmd BufNewFile,BufRead *.hcl set ft=hcl
autocmd BufNewFile,BufRead *.hcl set syntax=terraform
autocmd BufNewFile,BufRead *.hcl set ts=2
autocmd BufNewFile,BufRead *.hcl set expandtab

" Auto format terraform files
let g:terraform_fmt_on_save = 1


"" deoplete
call deoplete#custom#option('ignore_sources', {'_': ['buffer','around']})
let g:deoplete#enable_at_startup = 1


"" gutenntags
" Disable gutentags for git commit/rebase files
au FileType gitcommit,gitrebase let g:gutentags_enabled=0
" Place tags files in ~/.vimtmp
let g:gutentags_cache_dir = expand('~/.vimtmp/')


"" LanguageClient-neovim
let g:LanguageClient_serverCommands = {
    \ 'terraform': ['~/bin/terraform-lsp'],
    \ }

"" Fern
" Function that we'll call when fern buffer is selected
" used to reset tmux-navigator mappings
function! s:init_fern() abort
  nnoremap <buffer><silent> <c-h> :TmuxNavigateLeft<cr>
  nnoremap <buffer><silent> <c-j> :TmuxNavigateDown<cr>
  nnoremap <buffer><silent> <c-k> :TmuxNavigateUp<cr>
  nnoremap <buffer><silent> <c-l> :TmuxNavigateRight<cr>
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END


"" pear-tree
" Disable pear tree for vimwiki
let g:pear_tree_ft_disabled = ['vimwiki']
