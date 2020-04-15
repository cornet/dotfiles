" Colour scheme handled by bash16-shell:
" https://github.com/chriskempson/base16-shell
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

" Fix copy/paste
" highlight Normal ctermbg=NONE
