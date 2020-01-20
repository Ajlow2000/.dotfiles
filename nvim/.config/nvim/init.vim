"  ##################################################################
"  _   _                 _              ____             __ _
" | \ | | ___  _____   _(_)_ __ ___    / ___|___  _ __  / _(_) __ _
" |  \| |/ _ \/ _ \ \ / / | '_ ` _ \  | |   / _ \| '_ \| |_| |/ _` |
" | |\  |  __/ (_) \ V /| | | | | | | | |__| (_) | | | |  _| | (_| |
" |_| \_|\___|\___/ \_/ |_|_| |_| |_|  \____\___/|_| |_|_| |_|\__, |
"                                                             |___/
"  ##################################################################

" #############################################################################
" ##### VimPlug ###############################################################
" #############################################################################

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'                           " Basics
Plug 'arcticicestudio/nord-vim'                     " Nord Colorscheme
Plug 'kien/rainbow_parentheses.vim'                 " Color bracket pairs
"Plug 'vim-airline/vim-airline'                      " Status Line
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'                          " File Exploring Tree
Plug 'scrooloose/nerdcommenter'                     " Block Commenting
Plug 'Yggdroot/indentLine'                          " Show indentation levels
Plug 'ntpeters/vim-better-whitespace'               " Highlights and strips whitespace
Plug 'tpope/vim-fugitive'                           " Git integration
Plug 'tpope/vim-rhubarb'                            " Github support
" Plug 'coldfix/hexHighlight'                         " Highlight hex color codes
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-obsession'                          " Vim session saving

" ##### Language Support #####
Plug 'baskerville/vim-sxhkdrc', { 'for': 'sxhkdrc' }  " SXHKD config syntax
Plug 'plasticboy/vim-markdown'                      " Markdown Syntax
Plug 'zacharied/lc3.vim', { 'for': 'asm' }            " LC3 Syntax
" Plug 'davidhalter/jedi-vim'                         " Python Autocompletion

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" #############################################################################
" ##### Miscellaneous #########################################################
" #############################################################################

" Highlight current line of active window
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'


" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" NERDTree Hotkey
map <C-n> :NERDTreeToggle<CR>

" Close vim if NERDTree is the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Start NERDTree automatically when using nvim to open a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" set relative line numbers
set number
set relativenumber

" highlight matching brackets
set showmatch

" Disable swap files
set noswapfile

" natural splitting
set splitbelow splitright

" split shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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


" #############################################################################
" ##### Visuals ###############################################################
" #############################################################################


" Transparency
hi Normal guibg=NONE ctermbg=NONE

" Highlight indent chars with colorscheme
let g:indentLine_setColors = 1

" Status Line theme
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Set colorscheme
colorscheme nord
