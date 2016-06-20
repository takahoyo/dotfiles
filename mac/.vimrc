set number
set ruler
set backspace=start,eol,indent
set autoindent
set shiftwidth=4
set tabstop=4
set nocompatible
filetype plugin indent off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
	call neobundle#begin(expand('~/.vim/bundle'))
	NeoBundleFetch 'Shougo/neobundle.vim'
	NeoBundle 'plasticboy/vim-markdown'
	NeoBundle 'kannokanno/previm'
	NeoBundle 'tyru/open-browser.vim'
	call neobundle#end()
endif 

au BufRead,BufNewFile *.md set filetype=markdown
syntax enable
