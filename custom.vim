set bg=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "custom"

hi Normal	ctermfg=white
hi Comment	ctermfg=cyan
hi Constant	ctermfg=magenta
hi statement	ctermfg=blue
hi PreProc	ctermfg=darkmagenta
hi type		ctermfg=darkgreen
hi Identifier	ctermfg=darkred
hi Search       ctermfg=black ctermbg=yellow
hi Folded	ctermfg=red
hi FoldedColumn	ctermfg=red

hi LineNr	ctermfg=darkred	ctermbg=0
hi CursorLineNr ctermfg=white 
