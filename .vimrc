syntax on

filetype on
filetype plugin on

set encoding=utf-8
set backup
set backupdir=~/.vimfiles/backup
set directory=~/.vimfiles/temp
set nocompatible
set history=1000
set viminfo+=!
set isk+=_,$,@,%,#,-
set paste
set ruler
set lz
set backspace=2
set noerrorbells
set showmatch
set incsearch
set hlsearch
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set shiftwidth=2
set tabstop=2
set expandtab
set nowrap
set autoindent
set background=dark
set runtimepath^=~/.vim/bundle/ctrlp.vim

match Todo "\(TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\|NOTE\):"

if exists('+colorcolumn')
  set colorcolumn=80
else
  BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif

" REVIEW: I personally like these, but it offends others in shared code environments (exiquio)
"autocmd BufWritePre * :%s/\s\+$//e
"autocmd BufWritePre * :retab

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
