syntax enable
syntax on
set background=dark

filetype on
filetype indent plugin in
set title

set backspace=indent,eol,start

set encoding=utf-8 nobomb

let mapleader="\<Space>"

set binary
set noeol

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
        set undodir=~/.vim/undo
endif

set tabstop=8 expandtab shiftwidth=4 softtabstop=4

set cursorline  " Highlight the line the cursor is on
set showmatch	" Briefly jump to matching bracket when inserted
set number	" Show line number

