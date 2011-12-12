set nocompatible
syntax enable
set encoding=utf-8
set showcmd

filetype on
filetype indent on
filetype plugin on

set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase

set visualbell

call pathogen#infect()

let g:CommandTMaxHeight=20

" Full screen to max width and height.
set fuoptions=maxhorz,maxvert

" Trim trailing whitespace
autocmd BufWritePre *.rb,*.js,*.erb :%s/\s\+$//e

" Highlight trailing whitespace
set list listchars=tab:»·,trail:·"

