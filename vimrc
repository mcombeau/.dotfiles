set nocompatible
set noerrorbells visualbell t_vb=

" ------	LINE NUMBERS

set number
set relativenumber
set nowrap
set cursorline
set numberwidth=6

" ------	SPACING/TABS

set tabstop=4
set cindent			" C auto indentation
set shiftwidth=4	" Width for C auto indentation

" ------	SEARCH

set ignorecase
set smartcase

" ------	STYLING

set termguicolors
let base16colorspace=256
set colorcolumn=80
set syntax=on
filetype plugin indent on

" ------	KEY MAPPING

let mapleader=" "
set backspace=indent,eol,start
nnoremap <Left>		:echoe "Use h"<CR>
nnoremap <Right>	:echoe "Use l"<CR>
nnoremap <Up>		:echoe "Use k"<CR>
nnoremap <Down> 	:echoe "Use j"<CR>
inoremap <Left>		<ESC>:echoe "Use h"<CR>
inoremap <Right>	<ESC>:echoe "Use l"<CR>
inoremap <Up>		<ESC>:echoe "Use k"<CR>
inoremap <Down> 	<ESC>:echoe "Use j"<CR>

" ------	USER ID

let g:user42 = 'mcombeau'
let g:mail42 = 'mcombeau@student.42.fr'

" ------	PLUGINS

source ~/.vim/plugins.vim
