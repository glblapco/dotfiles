set nocompatible              " be iMproved, required
set nomodeline
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:licenses_copyright_holders_name = 'Biel A. P. - 0xbiel <biel@ugly.cat>'
let g:licenses_authors_name = 'Biel A. P. - 0xbiel <biel@ugly.cat>'
set wrap
set ruler
set wildmenu
set incsearch
set confirm
set number
"set laststatus=2
set list
set listchars=
set listchars+=precedes:<,extends:>
set listchars+=tab:..
set sidescroll=5
set scrolloff=5
"set cc=80
set title
"colorscheme shady
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set guioptions=Ace
"inoremap <S-Space> <Esc>/<++><Enter>"_c4l
iabbrev blogtemp    <html><CR><head><CR><title>0xbiel</title><CR><link rel="stylesheet" href="./style.css"</link><CR><meta name="viewport" content="width=device-width, initial-scale=1"><CR></head><CR><body><CR><pre><CR></pre><CR></body><CR></html>
