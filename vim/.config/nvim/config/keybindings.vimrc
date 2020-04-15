" Move between windows easily
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

" Quick toggle of line numbers
map <leader>l :set nu!<cr>

" Use ctrl+n to enter terminal visual mode
tnoremap <C-n> <C-\><C-n>

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>tl :tabnext<cr>
map <leader>th :tabprevious<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Fzf mapping
map <C-p> :FzfGitFiles<cr>
map <leader>ft :FzfBTags<cr>
map <leader>fb :FzfBuffers<cr>
map <leader>fc :FzfCommits<cr>
map <leader>fs :FzfSnippets<cr>
map <leader>fg :FzfGitFiles<cr>
map <leader>ff :FZF<cr>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" NERDTree
map <leader>ne :NERDTree<cr>

" Ack
nnoremap <Leader>a :Ack!<Space>

" Fugitive
map <leader>gd :Gvdiffsplit<cr>
map <leader>gs :Gstatus<cr>
map <leader>gl :Glog<cr>
map <leader>gb :Gbrowse<cr>
map <leader>ga :Git add %:p<cr><cr>
map <leader>gc :Gcommit -v -q<cr>

" TagBar
map <leader>t :TagbarToggle<cr>
