""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" "
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

    Plugin 'sheerun/vim-polyglot'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-repeat'
    Plugin 'psliwka/vim-smoothie'
	Plugin 'llathasa-veleth/vim-brainfuck'
    Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removalcall plug#begin('~/.vim/plugged')

set nocompatible
set number
set relativenumber
set lazyredraw

set fileformat=unix
set encoding=UTF-8

set list
set listchars=eol:¬,tab:>\ ,trail:˽,extends:>,precedes:<

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
"set expandtab
set autoindent
set smartindent
set smarttab

set showmode
set showcmd
set smartcase
set history=1000

"search options
set incsearch
set smartcase
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

"keybinds
nnoremap <leader>r :!clear && %:p<Enter>
vmap <C-c> "+y

"clipboards synchronized
set clipboard^=unnamed,unnamedplus
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

"auto completion
filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS

"autocompletion settings
let g:enable_diagnostic_highlighting = 0
let g:ycm_show_diagnostics_ui = 0
