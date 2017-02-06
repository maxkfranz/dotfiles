call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

" Text color theme
Plug 'tomasr/molokai'

" JS
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Autocomplete
Plug 'valloric/youcompleteme'

" Stylesheets
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'

" Add plugins to &runtimepath
call plug#end()

" Set the molokai theme
colorscheme molokai
syntax on
hi Normal ctermbg=none
"hi NonText ctermbg=none
"hi LineNr ctermbg=none

set tabstop=2
set expandtab
set number

