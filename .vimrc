filetype plugin indent on
syntax on

set nocompatible
set history=1000
set autoread
set viminfo+=!
set isk+=_,$,@,%,#,-
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/temp
set ruler
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set hid
set smartcase
set hlsearch
set showmatch
set incsearch
set lazyredraw
set magic
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set background=dark
set encoding=utf-8
set ffs=unix,mac,dos
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set nowrap
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set colorcolumn=80
set list

autocmd BufRead,BufNewFile *.html setl shiftwidth=4 softtabstop=4 expandtab
autocmd BufRead,BufNewFile *.js setl shiftwidth=4 softtabstop=4 expandtab
autocmd BufRead,BufNewFile *.php setl shiftwidth=4 softtabstop=4 expandtab

" NOTE: Document all plugins used via pathogen
" Currently used plugins
"
" * CtrlP-Vim
" * Vim-Sensible
execute pathogen#infect()

" TODO: Replace abbreviations with full label
" TODO: Find a way to hightlight these /TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\|NOTE/
