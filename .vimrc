"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Stuff I have decided I don't like
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "set ignorecase -- turns out, I like case sensitivity 
" "set list " turns out, I don't like listchars -- show chars on end of line,
" whitespace, etc
" "autocmd GUIEnter * :simalt ~x -- having it auto maximize the screen is
" annoying
" "autocmd BufEnter * :lcd %:p:h -- switch to current dir (breaks some
" scripts)
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " General
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get out of horrible vi-compatible mode
filetype on " detect the type of file
set history=1000 " How many lines of history to remember
" set cf " enable error files and error jumping
" set clipboard+=unnamed " turns out I do like is sharing windows clipboard
" set ffs=dos,unix,mac " support all three, in this order
filetype plugin on " load filetype plugins
set viminfo+=! " make sure it can save viminfo
set isk+=_,$,@,%,#,- " none of these should be word dividers, so make them
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow=3
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Process_File_Always=1
" not be
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Theme/Colors
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark " we are using a dark background
syntax on " syntax highlighting on
syntax keyword xTodo TODO contained
syntax match xComment /%.*/ contains=xTodo
syntax keyword xNote NOTE contained
syntax match xComment /%.*/ contains=xNote
"highlight WhiteSpaceEOL ctermbg=darkgreen guibg=lightgreen 
"match WhiteSpaceEOL /^\s*\ \s*\|\s\+$/ 
"autocmd WinEnter * match WhiteSpaceEOL /^\s*\ \s*\|\s\+$/
" colorscheme metacosm " my theme
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Files/Backups
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backup " make backup file
set backupdir=~/.vimfiles/backup " where to put backup file
set directory=~/.vimfiles/temp " directory is the directory for temp file
" set makeef=error.err " When using make, where should it dump the file
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Vim UI
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set lsp=0 " space it out a little more (easier to read)
" set wildmenu " turn on wild menu
set ruler " Always show current positions along the bottom 
" set cmdheight=2 " the command bar is 2 high
"set number " turn on line numbers
set lz " do not redraw while running macros (much faster) (LazyRedraw)
" set hid " you can change buffer without saving
set backspace=2 " make backspace work normal
" set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
" set mouse=a " use mouse everywhere
" set shortmess=atI " shortens messages to avoid 'press a key' prompt 
" set report=0 " tell us when anything is changed via :...
set noerrorbells " don't make noise
" make the splitters between windows be blank
" set fillchars=vert:\ ,stl:\ ,stlnc:\ 
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Visual Cues
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch " show matching brackets
set mat=10 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
" set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show
" when I hit :set list
" set novisualbell " don't blink
" set noerrorbells " no noises
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2" always show the status line
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Text Formatting/Layout
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set fo=tcrqn " See Help (complex)
set ai " autoindent
set si " smartindent 
"set cindent " do c-style indenting
set tabstop=2 " tab spacing (settings below are just to unify it
set softtabstop=2 " unify
set shiftwidth=2 " unify 
set noexpandtab " real tabs please!
set nowrap " do not wrap lines  
set smarttab " use tabs at the start of a line, spaces elsewhere """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " File Explorer
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:explVertical=1 " should I split verticially
let g:explWinSize=35 " width of 35 pixels
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Win Manager
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWidth=35 " How wide should it be( pixels)
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' "
" What windows should it
"
"  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Minibuf
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two
" lines)
let g:miniBufExplModSelTarget = 1
