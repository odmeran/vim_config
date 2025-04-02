set nocompatible

" THEME

colorscheme slate " ls -l /usr/share/vim/vim<version>/colors
set background=light " Reset colors
set background=dark

" VISUAL HELPERS

filetype on
filetype plugin on
filetype indent on

syntax on

set number

"set cursorline
"set cursorcolumn

"set statusline=%4*\ %<%F%*
"set statusline=%M%R%l/%L,%c:%F
set statusline+=\ %F\ %r%m%=%l/%L,%c\ \  " Display file's full path on the status line
set laststatus=2 " Always show the status line
"hi StatusLine ctermbg=lightgray ctermfg=darkgray
hi StatusLine ctermbg=darkgray ctermfg=gray

set wildmenu " Enum files in the dir while <tab>ing in :e
"set wildmode=list:full

" TAB CHARACTERS

" General
set shiftwidth=4
set tabstop=4

" File specific
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
