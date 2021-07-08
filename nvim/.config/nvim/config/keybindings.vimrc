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

nnoremap <C-p> <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fc <cmd>Telescope git_commits<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Fern
map <leader>ne :Fern -drawer .<cr>

" Ack
nnoremap <Leader>a :Ack!<Space>

" Fugitive
map <leader>gd :Gvdiffsplit<cr>
map <leader>gs :Gstatus<cr>
map <leader>gl :Glog<cr>
map <leader>gb :Gbrowse<cr>
map <leader>ga :Git add %:p<cr><cr>
map <leader>gc :G commit -v -q<cr>

" TagBar
map <leader>t :TagbarToggle<cr>

" VimWiki
" Switch to notes wiki and create new note
noremap <leader>zn :VimwikiIndex 2<cr>:ZettelNew<space>
noremap <leader>zi :VimwikiIndex 2<cr>:VimwikiGoto Inbox<cr>:%d<cr>:ZettelInbox<cr>
