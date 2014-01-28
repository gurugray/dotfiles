set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

if filereadable(expand("~/.vim/.bundles.vim"))
	source ~/.vim/.bundles.vim
endif

filetype plugin indent on     " required!

if filereadable(expand("~/.vim/.common.vim"))
	source ~/.vim/.common.vim
endif

