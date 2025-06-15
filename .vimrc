" Author of this .vimrc uses Debian modified Vim (of the apt repo).
" Some features mentioned here might not be available in your
" version of Vim.

" use extended function of vim (no compatible with vi)
set nocompatible

" --------------------------------------------------------------------
" 							LANGUAGES SUPPORT
" --------------------------------------------------------------------

" For the lang specific scripts see the ~/.vim/ftplugin/ directory.
"
" I also use these plugins:
"
" - Elixir -> https://github.com/elixir-editors/vim-elixir
" - ReScript -> https://github.com/rescript-lang/vim-rescript
" - .NET -> https://github.com/OmniSharp/omnisharp-vim
" - .NET Razor -> https://github.com/jlcrochet/vim-razor

" Omnisharp to use dotnet instead of mono to run the server.
let g:OmniSharp_server_use_net6 = 1
" Disable automatic OmniSharp highlighting.
let g:OmniSharp_highlighting = 0

let g:OmniSharp_popup_options = {
\ 'highlight': 'Normal',
\ 'padding': [1],
\ 'border': [1],
\ 'borderchars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
\ 'borderhighlight': ['Special']
\}

" Cake files use C# syntax.
if expand('%:e') == 'cake'
	set ft=cs
endif

" cshtml files use razor syntax.
if expand('%:e') == 'cshtml'
	set ft=razor
endif

" Nuget files use XML syntax.
if expand('%:t') == 'Directory.Packages.props' ||
	\ expand('%:t') == 'Directory.Build.targets' ||
	\ expand('%:t') == 'Directory.Build.props' ||
	\ expand('%:t') == 'nuget.config'
	set ft=xml
endif

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
set cc=71 " Display the line wrap column

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
autocmd FileType xml setlocal shiftwidth=2 tabstop=2
autocmd FileType php setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType ps1 setlocal shiftwidth=2 tabstop=2
"autocmd FileType elixir setlocal shiftwidth=4 tabstop=4 noexpandtab
autocmd FileType elixir setlocal noexpandtab

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

" Tabs management
nmap tn :tabnew<cr>
nmap th :tabprevious<cr>
nmap tl :tabnext<cr>
" Create a new tab and move the focused window to the tab.
nmap tm :tabedit %<cr>
