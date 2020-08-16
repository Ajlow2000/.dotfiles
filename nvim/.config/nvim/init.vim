
" ##### VimPlug #####
        " Install Vim Plug
    if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	    echo "Downloading junegunn/vim-plug to manage plugins..."
	    silent !mkdir -p ~/.config/nvim/autoload/
	    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	    autocmd VimEnter * PlugInstall
    endif

        " Plugins will be downloaded under the specified directory.
    call plug#begin('~/.local/share/nvim/plugged')

        " General Plugins
    Plug 'tpope/vim-sensible'                           " Basics
    Plug 'arcticicestudio/nord-vim'                     " Nord Colorscheme
    Plug 'kien/rainbow_parentheses.vim'                 " Color bracket pairs
    Plug 'itchyny/lightline.vim'                        " Status Bar
    Plug 'preservim/nerdtree'                           " File Exploring Tree
    Plug 'preservim/nerdcommenter'                      " Block Commenting
    Plug 'Yggdroot/indentLine'                          " Show indentation levels
    Plug 'ntpeters/vim-better-whitespace'               " Better Whitespace Mngmt
    Plug 'junegunn/goyo.vim'                            " Focus mode

    Plug 'tpope/vim-fugitive'                           " Git integration
    Plug 'tpope/vim-rhubarb'                            " Github support
    " Plug 'coldfix/hexHighlight'                         " Highlight hex color codes
    Plug 'tpope/vim-obsession'                          " Vim session saving

        " ##### Language Support #####
    Plug 'sheerun/vim-polyglot'                         " Lots of languages
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }


        " List ends here. Plugins become visible to Vim after this call.
    call plug#end()


" #####  Mappings #####
    let mapleader ="\\"

        " Vimrc
    nnoremap <leader>vr :source $XDG_CONFIG_HOME/nvim/init.vim<CR>
    nnoremap <Leader>ve :e $XDG_CONFIG_HOME/nvim/init.vim<CR>

        " Folding
    nnoremap <space> za

        " Compile Document
    map <leader>c :w! \| !compiler <c-r>%<CR><CR>

        " Open preview
	map <leader>p :w! \| !preview <c-r>%<CR>

        " NERDTree HotKey
    map <leader>n :NERDTreeToggle<CR>

        " Switch vim window focus
    map <leader>w :wincmd w<cr>

        " Goyo
    map <leader>g :Goyo<CR>

        " StripWhitespace
    map <leader>sw :StripWhitespace<CR>

        " split shortcuts TODO - Auto absorb trailing bracket
    " map <C-h> <C-w>h
    " map <C-j> <C-w>j
    " map <C-k> <C-w>k
    " map <C-l> <C-w>l

        " Spell Check toggle
    nnoremap <silent> <leader>s :set spell!<cr>
    inoremap <silent> <leader>s <C-O>:set spell!<cr>

" ##### Autoclosing #####
""    inoremap " ""<left>
""    inoremap ' ''<left>
""    inoremap ( ()<left>
""    inoremap [ []<left>
""    inoremap { {}<left>
""    inoremap {<CR> {<CR>}<ESC>O
""    inoremap {;<CR> {<CR>};<ESC>O

" ##### Zvfpryynarbhf #####
        " Uvtuyvtug pheerag yvar bs npgvir jvaqbj
    augroup BgHighlight
        autocmd!
        autocmd WinEnter * set cul
        autocmd WinLeave * set nocul
    augroup END

" ##### Autocommands #####

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

        " SpellCheck
    set spelllang=en

        " Dont break words when wrapping
    set nolist wrap linebreak breakat&vim breakindent

        " Fold by indent
    set foldmethod=indent
    set foldlevel=99

" ##### Visuals #####

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

        " Cursor Line
    highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    set cursorline

        " Set colorscheme
    colorscheme nord
