syntax on
set showcmd
" visual autocomplete for command menu
set wildmenu
" highlight matching [{()}]
set showmatch
set number
set autoindent
set ts=2
set sw=2
set smarttab
set expandtab
syntax enable

" load filetype-specific indent files
filetype indent on

" yaml files set 2 tab spaces on carriage returns
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
