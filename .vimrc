set enc=UTF-8 
set fileencodings=UTF-8
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set softtabstop=2
set laststatus=2
set cindent
set autoindent
set smartindent
set hi=1000
set hls
set scs
set showmatch
set number
set mouse=a
set fileencoding=utf-8
set backspace=2
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'alvan/vim-closetag'
Plugin 'gmarik/Vundle.vim'
Plugin 'slim-template/vim-slim.git'
call vundle#end()
syntax enable
filetype plugin indent on
" closetag config
let g:closetag_filenames = '*.html, *.jsx, *.js'
let g:closetag_filetypes = 'html, jsx, js'
let g:closetag_emptyTags_caseSensitive = 1
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
" airline config
let g:airline_theme='deus'
" ale config
let g:ale_enabled = 1
let g:ale_sign_column_always=0
let g:ale_completion_enable=0
let g:ale_set_highlights=0
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "-"
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_autopep8_executable = 'python3'
let g:ale_python_autopep8_options = '-m autopep8'
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {'jsx': ['eslint']}
let g:ale_fixers = {
\   'python': ['flake8'],
\}
let g:ale_fixers = {
\   'html': ['html-beautify'],
\   'javascript': ['eslint', 'remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autopep8'],
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_fix_on_save = 1
highlight clear ALEErrorSign
highlight clear ALEWarnignSign
highlight clear SignColumn
