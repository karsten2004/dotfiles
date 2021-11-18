"Karstadt Kaufhof GmbH
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
call plug#end()

set nocompatible
set number
set relativenumber
set lazyredraw

set fileformat=unix
set encoding=UTF-8

set list
set listchars=eol:¬,tab:>-,trail:˽,extends:>,precedes:<

"file syntax and stuff
filetype on
filetype plugin on
filetype indent on
syntax on

"cursor position
set cursorline
"set cursorcolumn

"indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set smarttab

set showmode
set showcmd
set smartcase
set history=1000

"search options
set incsearch
set ignorecase
set showmatch
set hlsearch

"vim folding
set foldenable
set foldlevelstart=10
set foldmethod=indent
set foldnestmax=10

"possible but not for me
"set scrolloff=10
"set nowrap

"wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"Status bar
set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
