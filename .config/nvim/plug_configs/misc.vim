
        " Quick source/edit Vimrc
    nnoremap <leader>vr :source $XDG_CONFIG_HOME/nvim/init.vim<CR>
    nnoremap <Leader>ve :e $XDG_CONFIG_HOME/nvim/init.vim<CR>

        " Compile Document with custom compiler script (~/.local/scripts)
    map <leader>c :w! \| !compiler <c-r>%<CR><CR>

        " Open preview (TODO - Not sure what this does)
	map <leader>p :w! \| !preview <c-r>%<CR>

        " SpellCheck
    set spelllang=en

        " Spell Check toggle
    nnoremap <silent> <leader>s :set spell!<cr>
    inoremap <silent> <leader>s <C-O>:set spell!<cr>

        " Autoclosing Pairs
    "inoremap " ""<left>
    "inoremap ' ''<left>
    "inoremap ( ()<left>
    "inoremap [ []<left>
    "inoremap { {}<left>
    "inoremap {<CR> {<CR>}<ESC>O
    "inoremap {;<CR> {<CR>};<ESC>O