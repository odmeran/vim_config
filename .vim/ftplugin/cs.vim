" --------------------------------------------------------------------
" 								KEYMAPS
" --------------------------------------------------------------------

" Yeah I know it's messy. Choose whichever you like:

" Comment & uncomment
" normal mode (one line; comments with /**/)
nmap <S-C>  :s/\(\s*\)\(.*\)/\1\/*\2*\/<cr>:noh<cr>
nmap d<S-C> :s/\(\s*\)\/\*\(.*\)\*\//\1\2<cr>:noh<cr>
" visual mode (one line, multiple lines; comments with //)
vmap <S-C>  :s/\(\s*\)\(.*\)/\1\/\/\2<cr>:noh<cr>
vmap d<S-C> :s/\(\s*\)\/\/\(.*\)/\1\2<cr>:noh<cr>
" This works for all kinds of visual modes. Uncomment works only for
" full line comments (^/\*.*\*/&).
"xmap <S-C>  c/*<Esc>pa*/<Esc>
xmap <S-C>  :s/\%V.*\%V./\/*&*\//g<cr>:noh<cr>
xmap d<S-C> :s/\(\s*\)\/\*\(.*\)\*\//\1\2<cr>:noh<cr>
