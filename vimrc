set nocompatible
syntax enable
set encoding=utf-8
set showcmd

let g:localvimrc_sandbox = 0
let g:localvimrc_debug = 1
let g:localvimrc_persistent = 0

call pathogen#infect()

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

let g:ctrlp_by_filename = 1

" Trim trailing whitespace
autocmd BufWritePre *.rb,*.js,*.erb,*.scss :%s/\s\+$//e

" Swap tabs for spaces
autocmd BufWritePre *.rb,*.js,*.erb,*.scss :%s/\t/  /e

" Highlight trailing whitespace
set list listchars=tab:»·,trail:·"

" Show line numbers
set number

" Show status line
set laststatus=2

" zsh ftw
set shell=zsh\ --login

" alias W an E to w and e, respectively
cnoreabbrev W w
cnoreabbrev E e

" Save/load window state
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

if has("gui_running")
  " Solarized 
  let g:solarized_termcolors=256
  set background=dark
  colorscheme vividchalk

  " Powerline
  let g:Powerline_symbols = 'fancy'
  set guifont=Menlo\ Regular\ for\ Powerline:h11

  " zsh causes hangs in Lion 
  " http://code.google.com/p/macvim/issues/detail?id=346
  set sh=/bin/sh
endif

"let $XIKI_DIR = "/Users/kbuckler/code/xiki"
"source /Users/kbuckler/code/xiki/etc/vim/xiki.vim

