execute pathogen#infect()

" Configuration
set wildmenu
set nocompatible
set nobackup
set ignorecase smartcase
set incsearch
set hlsearch
set ai
set cin
set showmatch
set nu
syntax on
set backspace=2
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set cm=blowfish

filetype on
filetype plugin indent on

set background=dark

" status line
set laststatus=2 " always show the status bar
set statusline=%F\ %c.%l/%L\ %m

" Buffers
map gb :bn<CR>
map gB :bp<CR>

" Non-printable characters
set lcs=eol:$,tab:\|-
map \| :set invlist<CR>

" Search
map \ :nohlsearch<CR>

" Go
" Auto gofmt when saving
let g:go_fmt_command = "goimports"
