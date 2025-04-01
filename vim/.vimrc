" BASIC .VIMRC

set nocompatible



" disable backup files before editing
set nobackup

" disable backup files on editing
set nowritebackup

" disable swap files for unsaved changes
set noswapfile



" enable filetype detection
filetype plugin indent on



" enable syntax highlighting
syntax on

" use dark mode for background
set background=dark



" smart indents based on syntax
set smartindent

" auto indent based on previous line
set autoindent

" convert tabs to spaces
set expandtab

" number of spaces in a tab
set tabstop=4

" number of spaces in a tab while in edit mode
set softtabstop=4

" number of spaces to use for each (auto)indent level 
set shiftwidth=4

" use shiftwidth for tab and backspace
set smarttab



" show line numbers
set number

" show relative numbers to current line
" set relativenumber



" enable line wrapping
set wrap

" don't break words when wrapping lines       
set linebreak

" maximum width of text that is auto wrapped
set textwidth=80


" suppress the intro  message
set shortmess+=I



" define <SPACE> as the map leader key
let mapleader=' '

" define <SPACE> + <W> to quick save and quit
nmap <leader>w :wq<cr>

" define <SPACE> + <Q> to quick force quit
nmap <leader>q :q!<cr>
