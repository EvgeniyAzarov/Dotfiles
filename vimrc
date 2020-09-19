set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
let g:mapleader=','

"mappings
map <Leader> <Plug>(easymotion-prefix)


au FileType py
    \ setlocal textwidth=79 expandtab fileformat=unix


set encoding=utf-8

"let python_highlight_all=1
syntax on

set nu
set splitbelow
highlight LineNr ctermfg=grey term=bold
