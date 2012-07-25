syntax on
filetype on
filetype plugin on

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
set whichwrap+=<,>,h,l
set noerrorbells
set showmatch
set mat=10
set incsearch
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set tabstop=2
set shiftwidth=2
set noexpandtab
set nowrap
set smarttab
set autoindent
set background=dark

match Todo "\(TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\):"
autocmd BufWritePre * :%s/\s\+$//e

if exists('+colorcolumn')
	set colorcolumn=80
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
