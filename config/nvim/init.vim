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

" NORMAL MODE

" General
" Map shortcut for muting hilight piggy backing <C-l>
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" Map shortcut for very magic regex
nnoremap <Leader>o /\v

" ctags
" Generate tags
nnoremap <f5> :!ctags -R<CR>

" Ale
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> [W <Plug>(ale_first)
nmap <silent> ]W <Plug>(ale_last)

" fzf
" Fuzzy  file search
nnoremap <C-p> :<C-u>FZF<CR>

" LangaugeClient-neovim
nmap <F5> <Plug>(lcn-menu)
nmap <silent> <Leader>h <Plug>(lcn-hover)
nmap <silent> <F2> <Plug>(lcn-rename)
nmap <silent> gd <Plug>(lcn-definition)

" vim-grepper
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
" Shortcuts to Grepper prompt
nnoremap <Leader>g :Grepper -tool rg<CR>

" vim-obsession
nnoremap <Leader>s :Obsession<CR>

" TERMINAL MODE

" General
" Map <Esc> to return to normal mode in terminal
tnoremap <Esc> <C-\><C-n>
" Map <C-v><Esc> to <Esc>
tnoremap <C-v><Esc> <Esc>

""" PLUGINS

" NOTE: Plugins are managed by minpac
" Load and initialize minpac
packadd minpac
call minpac#init()

" Add plugins
call minpac#add('autozimu/LanguageClient-neovim', {'branch': 'next', 'do': {-> system('bash install.sh')}}) " TODO Replace when 0.5 becomes stable
call minpac#add('dense-analysis/ale')
call minpac#add('junegunn/fzf', {'do': {-> fzf#install()}})
call minpac#add('mhinz/vim-grepper')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('sgur/vim-editorconfig')
call minpac#add('tpope/vim-dispatch')
call minpac#add('tpope/vim-obsession')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-unimpaired')

" Add optional plugins
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})

" MINPAC COMMANDS
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()

" PLUGIN SETTINGS

" Ale
" Define linters
let g:ale_linters = {
      \ 'javascript': ['eslint']
      \ }

" LanguageClient-neovim
" Language servers
let g:LanguageClient_serverCommands = {
      \ 'javascript': ['js-langserver', '--stdio']
      \ }

" vim-grepper
let g:grepper = {}
let g:grepper.tools = ['rg', 'git']

" TODO: Find a way to hightlight these /TODO\|FIXME\|OPTIMIZE\|HACK\|REVIEW\|NOTE/
" TODO: Implement Neovim's built in LSP support when version 0.5 becomes
" stable.
