" ------	VIM-PLUG

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug '42Paris/42header'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-sensible'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'itchyny/lightline.vim'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'mcombeau/vim-twee-sugarcube'
	Plug 'mcombeau/monosplash.vim'
if has('nvim')
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
endif

call plug#end()

" ------	TREESITTER
if has('nvim')
	source ~/.vim/plugin.conf/treesitter_setup.vim
endif

" ------	FZF + RG
source ~/.vim/plugin.conf/fzf-rg.vim

" ------	COC
source ~/.vim/plugin.conf/coc.vim

" ------	COLORIZER
lua require'colorizer'.setup()
