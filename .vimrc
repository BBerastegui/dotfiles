" Almost all from jroimartin :P
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
set backspace=2
set shiftwidth=4
set tabstop=4
set smarttab
"set expandtab
filetype on
filetype plugin indent on
syntax on
"colorscheme desert
set background=dark

" Highlight chars over column 80
"match ErrorMsg '\%>80v.\+'

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

" Encryption algorithm for vim -x
set cm=blowfish
