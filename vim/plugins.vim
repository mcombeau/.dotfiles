" ------	VIM-PLUG

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-commentary'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'mcombeau/monosplash.vim'
    if has('nvim')
	    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
        Plug 'neovim/nvim-lspconfig'
        Plug 'hrsh7th/nvim-cmp'            " Completion plugin
        Plug 'hrsh7th/cmp-nvim-lsp'        " LSP completion source
        Plug 'hrsh7th/cmp-buffer'          " Buffer completion source
        Plug 'hrsh7th/cmp-path'            " Path completion source
        Plug 'hrsh7th/cmp-vsnip'           " Snippet completion source
        Plug 'hrsh7th/vim-vsnip'           " Snippet engine
        " Plug 'nvimdev/lspsaga.nvim'
    endif
	" Plug 'tpope/vim-surround'
	" Plug 'norcalli/nvim-colorizer.lua'
	" Plug 'mcombeau/vim-twee-sugarcube'
    

call plug#end()

" ------	COLORIZING
if has('nvim')
	source ~/.vim/plugin.conf/treesitter_setup.vim
endif
"lua require'colorizer'.setup()

" ------	FZF + RG
source ~/.vim/plugin.conf/fzf-rg.vim

" ------	LSP
source ~/.vim/plugin.conf/lspconfig.vim
source ~/.vim/plugin.conf/nvim-cmp.vim

" ------	THEME
source ~/.vim/plugin.conf/monosplash.vim
source ~/.vim/plugin.conf/lightline.vim
