
"   https://github.com/preservim/nerdtree

        " NERDTree HotKey
    map <leader>n :NERDTreeToggle<CR>

        " Close vim if NERDTree is the only open window
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

        " Start NERDTree automatically when using nvim to open a directory
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

        " Hide Hidden Files by Default - shift + i to toggle
    let NERDTreeShowHidden=0

