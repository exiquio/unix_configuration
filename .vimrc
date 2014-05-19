" General
filetype plugin indent on

set nocompatible
set history=1000
set autoread
set viminfo+=!
set isk+=_,$,@,%,#,-

" Files, backup, and undo
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/temp

" UI
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
set ffs=unix,dos,mac
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set nowrap
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

match Todo "\(TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\|NOTE\):"

if exists('+colorcolumn')
  set colorcolumn=120
else
  BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif

" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-trailing-whitespace

" REVIEW: I personally like these, but it offends others in shared code environments (exiquio)
"autocmd BufWritePre * :%s/\s\+$//e
"autocmd BufWritePre * :retab
