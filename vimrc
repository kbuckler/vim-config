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

" Trim trailing whitespace
autocmd BufWritePre *.rb,*.js,*.erb,*.scss :%s/\s\+$//e

" Swap tabs for spaces
autocmd BufWritePre *.rb,*.js,*.erb,*.scss :%s/\t/  /e

" 80 col
highlight EightyColumnPlus guibg=black
match EightyColumnPlus '\%>80v.\+'
autocmd ColorScheme * highlight EightyColumnPlus guibg=black

" Highlight whitespace
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
" au BufWinLeave ?* mkview
" au BufWinEnter ?* silent loadview

" Quickfix list
nnoremap ]q :cnext<cr>
nnoremap [q :cprevious<cr>

" Open the quickfix window after grep
autocmd QuickFixCmdPost *grep* cwindow

"let $XIKI_DIR = "/Users/kbuckler/code/xiki"
"source /Users/kbuckler/code/xiki/etc/vim/xiki.vim

" gitgutter
highlight clear SignColumn

" vim-dispatch
autocmd FileType ruby let b:dispatch = 'bundle exec testrb %'

if has("gui_running")
  " Solarized 
  " set background=dark
  
  colorscheme wombat256mod

  " Powerline
  let g:Powerline_symbols = 'fancy'
  set guifont=Menlo\ Regular\ for\ Powerline:h11

  " zsh causes hangs in Lion 
  " http://code.google.com/p/macvim/issues/detail?id=346
  set sh=/bin/sh
endif
