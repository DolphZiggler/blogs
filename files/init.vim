"""""""""""VIM PLUG"""""""""
call plug#begin('~/.vim/plugged')
	Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
	Plug 'https://github.com/NLKNguyen/papercolor-theme.git'
	Plug 'https://github.com/ycm-core/YouCompleteMe.git'
call plug#end()

set syntax
set nu
set cul
set cuc
set shiftwidth=2
set tabstop=2

set background=dark
colorscheme PaperColor


let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
