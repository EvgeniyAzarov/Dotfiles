filetype plugin indent on "Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set nocompatible "Отключает обратную совместимость с Vi
"syntax enable "Включает подсветку синтаксиса


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'vim-scripts/indentpython.vim'
Plug 'zhou13/vim-easyescape' 
Plug 'lervag/vimtex'
Plug 'arcticicestudio/nord-vim'
Plug 'SirVer/ultisnips'
Plug 'morhetz/gruvbox'

call plug#end()

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set encoding=utf-8

set mouse=n

colorscheme gruvbox
hi Normal ctermbg=none

let g:mapleader=','
let g:maplocalleader=" "

"Auto-pairs
let g:AutoPairsFlyMode=1

"YouCompleteMe
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"Настройка плагина vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
"hi Conceal ctermbg=None ctermfg=darkGray
augroup vimtex_config
	au!
	au User VimtexEventQuit call vimtex#compiler#clean(0)
augroup END
"let g:vimtex_enabled = 0

"Настройка UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"mappings
map <Leader> <Plug>(easymotion-prefix)
map <C-n> :NERDTreeToggle<CR>

let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 200
cnoremap jk <ESC>
cnoremap kj <ESC>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

au FileType py
    \ setlocal textwidth=79 expandtab fileformat=unix


set nu
set nocursorline
set splitbelow
"highlight LineNr ctermfg=grey term=bold

