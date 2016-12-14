call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'tomasr/molokai'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'groenewege/vim-less'
Plug 'groenewege/vim-less'

" Add plugins to &runtimepath
call plug#end()

" Set the molokai theme
colorscheme molokai
syntax on
hi Normal ctermbg=none
hi NonText ctermbg=none
hi LineNr ctermbg=none

set tabstop=2
set expandtab
