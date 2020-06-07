set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'jceb/vim-orgmode'

Plugin 'tpope/vim-speeddating'

call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

syntax on
"set showtabline=2
set wildmenu
set incsearch
set confirm
set title
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
