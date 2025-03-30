set nocompatible

" THEME

set background=dark

" VISUAL HELPERS

filetype on
filetype plugin on
filetype indent on

syntax on

set number

"set cursorline
"set cursorcolumn

" TABS

set shiftwidth=4
set tabstop=4

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType php setlocal shiftwidth=2 tabstop=2

"set expandtab " Space chars instead of tabs.

" SEARCH

set incsearch
set showmatch
set hlsearch

" COMMAND LINE

set showcmd

" SHOW SPACE CHARACTERS

set listchars=eol:·,tab:——,trail:~,extends:>,precedes:<
"•·—¬
set list

" KEYMAPS

nnoremap <Space> <C-w>
nmap <C-@> :vsp<cr>
nmap <C-K> :sp<cr>
