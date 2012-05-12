set backup " make backup file
set backupdir=~/.vimfiles/backup " where to put backup file
set directory=~/.vimfiles/temp " directory is the directory for temp file
set nocompatible
syntax on
filetype on
filetype plugin on
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
set ai
set si
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set nowrap
set smarttab
set background=dark
match Todo "\(TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\):"
autocmd BufWritePre * :%s/\s\+$//e
if exists('+colorcolumn')
	set colorcolumn=80
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif
