" Author of this .vimrc uses Debian modified Vim (of the apt repo).
" Some features mentioned here might not be available in your
" version of Vim.

" For languages support see
"
" - Elixir -> https://github.com/elixir-editors/vim-elixir

set nocompatible

" --------------------------------------------------------------------
" 								THEME
" --------------------------------------------------------------------

colorscheme slate " ls -l /usr/share/vim/vim<version>/colors
set background=light " Reset colors
set background=dark

" --------------------------------------------------------------------
" 							VISUAL HELPERS
" --------------------------------------------------------------------

filetype on
filetype plugin on
filetype indent on

syntax on

set number " Display line numbers

"set cursorline
"set cursorcolumn

"set statusline=%4*\ %<%F%*
set statusline+=\ %F\ %r%m%=%l/%L,%c\ \  " :h 'statusline'
set laststatus=2 " Always show the status line
hi StatusLine ctermbg=darkgray ctermfg=gray

set wildmenu " Enum (display) files in the dir with `:e <tab>`
"set wildmode=list:full

" --------------------------------------------------------------------
" 							TAB CHARACTERS
" --------------------------------------------------------------------

" General
set shiftwidth=4
set tabstop=4

" File specific
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType php setlocal shiftwidth=2 tabstop=2
autocmd FileType elixir setlocal shiftwidth=4 tabstop=4 noexpandtab

"set expandtab " Space chars instead of tabs.

" --------------------------------------------------------------------
" 								SEARCH
" --------------------------------------------------------------------

set incsearch
set showmatch
set hlsearch

" --------------------------------------------------------------------
" 							COMMAND LINE
" --------------------------------------------------------------------

set showcmd

" --------------------------------------------------------------------
" 						SHOW SPACE CHARACTERS
" --------------------------------------------------------------------

" Some symbols you might like to use: •·—¬␊␤
" https://symbl.cc/en/unicode/blocks/control-pictures/
set listchars=eol:·,tab:——,trail:~,extends:>,precedes:<
set list

" --------------------------------------------------------------------
" 								KEYMAPS
" --------------------------------------------------------------------

" `<Space> [hjkl]` to navigate between windows.
" `<Space> w` will switch you to the next window.
nnoremap <Space> <C-w>
" Ctrl+Space will open a new window to the right of the focused one.
nmap <C-@> :vsp<cr>
" Ctrl+K will open a new window below the focused one.
nmap <C-K> :sp<cr>

" With `gf` command you can follow (open file of) the path under the
" cursor. To get yourself back--to the previous opened file--go `gb`.
nnoremap gb <C-6>
