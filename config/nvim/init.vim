""" SETTINGS

" GENERAL

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
" Set toggle for paste mode
set pastetoggle=<f5>
" Show matching braces
set showmatch
set mat=2 " How many seconds to blink
" Automatic ingore case switchh
set smartcase
" Tried and true status line settings
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" Wrap left and right movements
set whichwrap+=<,>,h,l

""" AUTO COMMANDS

" TODO: Revisit based upon style guide
" Override tab settings for specific languages
"autocmd BufRead,BufNewFile *.html setl shiftwidth=4 softtabstop=4 expandtab
"autocmd BufRead,BufNewFile *.php setl shiftwidth=4 softtabstop=4 expandtab

""" KEY MAPPINGS

" NORMAL

" Map shortcut for muting hilight piggy backing <C-l>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" Map shortcut for very magic regex
nnoremap <A-/> /\v
" Shortcut for fzf
nnoremap <C-p> :<C-u>FZF<CR>
" Shortcut for ctags indexing
nnoremap <f5> :!ctags -R<CR>

" TERMINAL

" Map <Esc> to return to normal mode in terminal
tnoremap <Esc> <C-\><C-n>

""" PLUGINS

" NOTE: Plugins are managed by minpac
" Load and initialize minpac
packadd minpac
call minpac#init()
" Add plugins
call minpac#add('junegunn/fzf', {'do': {-> fzf#install()}})
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-unimpaired')
" Add optional plugins
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})

" MINPAC COMMANDS
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" TODO: Find a way to hightlight these /TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\|NOTE/
