"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on
set background=dark

if !has("gui_running")
    "set term=xterm
    "set t_Co=256
    "let &t_AB="\e[48;5;%dm"
    "let &t_AF="\e[38;5;%dm"
    "colorscheme molokai
    "colorscheme zenburn
    "colorscheme myterm
    "colorscheme material-theme
    colorscheme PaperColor
else
    colorscheme fruity
endif


filetype on
filetype indent plugin on
set title
" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
        set undodir=~/.vim/undo
endif


" Tabs  -----------------------------------------------------------------------
set tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Visual -----------------------------------------------------------------------

set cursorline            " Highlight the line the cursor is on
set showmatch             " Briefly jump to matching bracket when inserted
set number		  " Show line number
