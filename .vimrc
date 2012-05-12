set backup " make backup file
set backupdir=~/.vimfiles/backup " where to put backup file
set directory=~/.vimfiles/temp " directory is the directory for temp file

set nocompatible
syntax on " syntax higighting on
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
set mouse=a
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
let g:explVertical=1
let g:explWinSize=35
let g:winManagerWidth=35
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' "
let g:miniBufExplTabWrap = 1
let g:miniBufExplModSelTarget = 1

set background=dark
highlight WhiteSpaceEOL ctermbg=darkgreen guibg=lightgreen
match WhiteSpaceEOL /^\s*\ \s*\|\s\+$/
autocmd WinEnter * match WhiteSpaceEOL /^\s*\ \s*\|\s\+$/
syn keyword myAnnotations contained TODO: FIXME: OPTIMIZE: HACK: REVIEW:

if exists('+colorcolumn')
	set colorcolumn=80
else
	" Emulate
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%80v.\+', -1)
endif
