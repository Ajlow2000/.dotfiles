        " Highlight Current Line (I think)
    augroup BgHighlight
        autocmd!
        autocmd WinEnter * set cul
        autocmd WinLeave * set nocul
    augroup END

        " Transparency
    hi Normal guibg=NONE ctermbg=NONE

        " Configure Cursor Line
    highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    set cursorline

        " Set colorscheme
    colorscheme nord
    hi Comment ctermfg=darkgrey