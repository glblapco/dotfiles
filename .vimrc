set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'jceb/vim-orgmode'

Plugin 'tpope/vim-speeddating'

Plugin 'morhetz/gruvbox'

Plugin 'AlessandroYorba/Alduin'

Plugin 'junegunn/goyo.vim'

Plugin 'itchyny/lightline.vim'

Plugin 'sophacles/vim-processing'

call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

syntax on
let g:alduin_Shout_Dragon_Aspect = 1
colorscheme alduin
set wildmenu
set incsearch
set confirm
set title
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
"set showtabline=2
"set laststatus=2
set number
