set nocompatible
set noerrorbells visualbell t_vb=
set termguicolors
let base16colorspace=256
set syntax=on
filetype plugin indent on

" ------	SEARCH

set ignorecase
set smartcase

" ------	KEY MAPPING

source ~/.vim/keymapping.vim

" ------	PLUGINS

source ~/.vim/plugins.vim
source ~/.vim/coc.vim

" ------	STYLE
source ~/.vim/style.vim
