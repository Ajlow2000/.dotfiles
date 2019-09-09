"  ##################################################################
"  _   _                 _              ____             __ _       
" | \ | | ___  _____   _(_)_ __ ___    / ___|___  _ __  / _(_) __ _ 
" |  \| |/ _ \/ _ \ \ / / | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |
" | |\  |  __/ (_) \ V /| | | | | | | | |__| (_) | | | |  _| | (_| |
" |_| \_|\___|\___/ \_/ |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |
"                                                             |___/ 
"  ##################################################################
"  
" #############################################################################
" ##### Miscellaneous #########################################################
" #############################################################################

" set relative line numbers
set number
set relativenumber

" highlight matching brackets
set showmatch

" disable auto commenting on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" prevents inserting two spaces after punctuation on a join
set nojoinspaces

" Sets syntax highlighting
syntax on

" #############################################################################
" ##### TAB Behaviour #########################################################
" #############################################################################

" length of an actual \t char
set tabstop=4

" length to use when editing text
" (0 for 'tabstop', -1 for 'shiftwidth')
set softtabstop=0

" length to use when shifting text 
set shiftwidth=0

" round indendtation to multiples of 'shiftwidth' when shifting text
set shiftround

" if set, only inset spaces; otherwise insert \t and complete with spaces
set expandtab

" set reproduce the indentation of the previous line
set autoindent

" increase indent level after '{', decrease after '}'
set smartindent

" use language specific plugins for indenting 
filetype plugin indent on
