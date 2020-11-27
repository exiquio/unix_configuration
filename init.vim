" Turn on syntax hilighting
syntax on

" Backup and temp
set backup
set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/temp
" Hightlight column for style standards
set colorcolumn=80
" Set up tabbing
set expandtab
set shiftwidth=2
set softtabstop=2
" Use UNIX as default file type
set ffs=unix,mac,dos
" Hide unwritten changes instead of closing them
set hidden
" Add to keywords
set iskeyword+=_,$,@,%,#,-
" Show all whitespace
set list
" Use magic regexp.
set magic
" Do not wrap lines
set nowrap
" Show matching braces
set showmatch
set mat=2 " How many seconds to blink
" Automatic ingore case switchh
set smartcase
" Tried and true status line settings
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" Wrap left and right movements
set whichwrap+=<,>,h,l


" TODO: Revisit based upon style guide
" Override tab settings for specific languages
"autocmd BufRead,BufNewFile *.html setl shiftwidth=4 softtabstop=4 expandtab
"autocmd BufRead,BufNewFile *.php setl shiftwidth=4 softtabstop=4 expandtab

" TODO: Find a way to hightlight these /TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\|NOTE/
