colorscheme custom


set nocompatible
set expandtab
set tabstop=4
set shiftwidth=4
set showcmd
set autoindent

compiler gcc
set spl=en spell
set nospell
set relativenumber
set number

syntax enable

execute pathogen#infect('plugins/{}')

noremap <C-N> :NERDTreeToggle<Enter>
noremap <C-Y> :tabedit 
noremap <C-L> :TlistToggle<Enter>

let g:syntastic_python_checkers = ['flake8']

let g:SuperTabDefaultCompletionType = "context"


au FileType python map <F5> :!clear && python %<CR> 

