
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
Plug 'preservim/nerdtree' |                         " File Tree
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |  " Git Integration
            \ Plug 'ryanoasis/vim-devicons'         " Icon Support
Plug 'preservim/nerdcommenter'                      " Block Commenting
Plug 'Yggdroot/indentLine'                          " Show indentation levels
Plug 'ntpeters/vim-better-whitespace'               " Better Whitespace Mngmt
Plug 'junegunn/goyo.vim'                            " Focus mode
Plug 'junegunn/fzf',                                " Fuzzy find
Plug 'airblade/vim-rooter'                          " Detect vim projects detection
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multi line cursors        | :help visual-multi
Plug 'tpope/vim-fugitive'                           " Git integration
Plug 'tpope/vim-rhubarb'                            " Github support
" Plug 'coldfix/hexHighlight'                         " Highlight hex color codes
Plug 'tpope/vim-obsession'                          " Vim session saving

    " ##### Language Support #####
Plug 'sheerun/vim-polyglot'                         " Lots of languages
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

    " List ends here. Plugins become visible to Vim after this call.
call plug#end()


" ##### Leader Key #####
let mapleader ="\\"

" ##### Source local config files #####

    " Helper Function
function! SourceLocal(relativePath)
  let fullPath = '$XDG_CONFIG_HOME/nvim/plug_configs/'. a:relativePath
  exec 'source ' . fullPath
endfunction

    " Explicit files to include
call SourceLocal ("basics.vim")
call SourceLocal ("fzf.vim")
call SourceLocal ("goyo.vim")
call SourceLocal ("indentLine.vim")
call SourceLocal ("lightline.vim")
call SourceLocal ("misc.vim")
call SourceLocal ("navigation.vim")
call SourceLocal ("nerdcommenter.vim")
call SourceLocal ("nerdtree.vim")
call SourceLocal ("rainbow_parenthesis.vim")
call SourceLocal ("vim_better_whitespace.vim")
call SourceLocal ("nerdtree-git-plugin.vim")
call SourceLocal ("visuals.vim") " Must be sourced last
