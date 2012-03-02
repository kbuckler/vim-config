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

" Trim trailing whitespace
autocmd BufWritePre *.rb,*.js,*.erb,*.scss :%s/\s\+$//e

" Highlight trailing whitespace
set list listchars=tab:»·,trail:·"

" Show line numbers
set number

" Show status line
set laststatus=2

" zsh ftw
set shell=zsh

" alias W an E to w and e, respectively
cnoreabbrev W w
cnoreabbrev E e

# Hide scrollbars
set guioptions=-l
set guioptions=-L
set guioptions=-r
set guioptions=-R

