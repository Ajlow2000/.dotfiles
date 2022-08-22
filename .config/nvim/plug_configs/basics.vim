
        " set relative line numbers
    set number
    set relativenumber

        " highlight matching brackets
    set showmatch

        " Disable swap files
    set noswapfile

        " natural splitting
    set splitbelow splitright

        " disable auto commenting on newlines
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

        " prevents inserting two spaces after punctuation on a join
    set nojoinspaces

        " Sets syntax highlighting
    syntax on

        " length of an actual \t char
    set tabstop=4

        " length to use when editing text
        "   (0 for 'tabstop', -1 for 'shiftwidth')
    set softtabstop=0

        " length to use when shifting text
    set shiftwidth=0

        " round indendtation to multiples of 'shiftwidth' when shifting text
    set shiftround

        " if set, only insert spaces; otherwise insert \t and complete with spaces
    set expandtab

        " set reproduce the indentation of the previous line
    set autoindent

        " increase indent level after '{', decrease after '}'
    set smartindent

        " use language specific plugins for indenting
    filetype plugin indent on

        " allow plugins to use filetype specific info
    filetype plugin on

        " Dont break words when wrapping
    set nolist wrap linebreak breakat&vim breakindent

        " Fold by indent
    set foldmethod=indent
    set foldlevel=99