" General
filetype plugin indent on

set nocompatible
set history=1000
set autoread
set viminfo+=!
set isk+=_,$,@,%,#,-
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/temp

" UI
"colorscheme vividchalk
syntax on

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
set tabstop=2

" TODO: Find a way to hightlight these /TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\|NOTE/

autocmd BufRead,BufNewFile *.js setl sw=4 sts=4 et

set colorcolumn=80

" REVIEW: I personally like these, but it offends others in shared code environments (exiquio)
"autocmd BufWritePre * :%s/\s\+$//e
" autocmd BufWritePre * :retab

execute pathogen#infect()
