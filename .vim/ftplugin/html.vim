" --------------------------------------------------------------------
" 							TAB CHARACTERS
" --------------------------------------------------------------------

autocmd FileType html setlocal shiftwidth=2 tabstop=2

" --------------------------------------------------------------------
" 							VISUAL HELPERS
" --------------------------------------------------------------------

" cshtml files use razor syntax.
if expand('%:e') == 'cshtml'
	set ft=razor
	syntax on
endif

" --------------------------------------------------------------------
" 								KEYMAPS
" --------------------------------------------------------------------

" Comment & uncomment (no visual mode; one line only)
nmap <S-C>  :s/\(\s*\)\(.*\)/\1<!--\2--><cr>:noh<cr>
nmap d<S-C> :s/\(\s*\)<!--\(.*\)-->/\1\2<cr>:noh<cr>

if expand('%:e') == 'cshtml'
	nmap <S-C>  :s/\(\s*\)\(.*\)/\1@*\2*@<cr>:noh<cr>
	nmap d<S-C> :s/\(\s*\)@\*\(.*\)\*@/\1\2<cr>:noh<cr>
endif
