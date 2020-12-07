"""""""""""VIM PLUG"""""""""
call plug#begin('~/.vim/plugged')
	Plug 'octol/vim-cpp-enhanced-hightlight'
	Plug 'NLKNguyen/papercolor-theme'
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
let g:cpp_experimental_simple_template_highlight = 1
