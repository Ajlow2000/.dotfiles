" https://github.com/ntpeters/vim-better-whitespace


        " StripWhitespace in Normal Mode
    map <leader>sw :StripWhitespace<CR>

        " Enable Highlighting of whitespace
    let g:better_whitespace_enabled=1
    
        " Enable Stripping whitespace on buffer save
    let g:strip_whitespace_on_save = 1

        " Disable confirmation prompt for sw
    "let g:strip_whitespace_confirm=0

        " Strip only modified lines
    "let g:strip_only_modified_lines=1

        " Set custom highliight color
    "let g:better_whitespace_ctermcolor='<desired_color>'
    "let g:better_whitespace_guicolor='<desired_color>'


