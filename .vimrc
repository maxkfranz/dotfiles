call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

" Text color theme
Plug 'tomasr/molokai'

" JS
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Autocomplete
" Plug 'valloric/youcompleteme'

" Stylesheets
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'

" Util
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" Add plugins to &runtimepath
call plug#end()

" Set the molokai theme
set t_Co=256
colorscheme molokai
syntax on
hi Normal ctermbg=none
"hi NonText ctermbg=none
"hi LineNr ctermbg=none

" Replace tabs with 2 spaces
set tabstop=2
set expandtab

" Show line numbers
set number

" Bash-like autocomplete for :edit
set wildmenu
set wildmode=longest,list
set wildignore=**/node_modules/**

" CTRL+\ => open NerdTree
map <C-\> :NERDTreeToggle<CR>

" CTRL+P | CTRL+T => open CtrlP
map <C-p> :CtrlP<CR>
map <C-t> :CtrlP<CR>

" CTRL+J | CTRL+K | CTRL+N => nav tabs
map <C-j> :tabprev<CR>
map <C-k> :tabnext<CR>
map <C-n> :tabnew<CR>

" TAB completion
" imap <S-TAB> <C-P>
" ref http://vim.wikia.com/wiki/Autocomplete_with_TAB_when_typing_words
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
