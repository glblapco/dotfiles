set nocompatible              " be iMproved, required
set nomodeline
filetype plugin on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'junegunn/goyo.vim'

Plugin 'miyakogi/conoline.vim'

Plugin 'tpope/vim-fugitive'

"Plugin 'godlygeek/tabular'

Plugin 'plasticboy/vim-markdown'

Plugin 'mattn/emmet-vim'

Plugin 'antoyo/vim-licenses'

call vundle#end()            " required
filetype plugin indent on    " required

let g:licenses_copyright_holders_name = 'Biel A. P. - 0xbiel <biel@ugly.cat>'
let g:licenses_authors_name = 'Biel A. P. - 0xbiel <biel@ugly.cat>'

set list
set nowrap
set ruler
set wildmenu
set incsearch
set confirm
"set laststatus=2
set list
set listchars=
set listchars+=precedes:<,extends:>
"set listchars+=tab:..
set sidescroll=5
set scrolloff=5
set cc=80
set title
"colorscheme elflord
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set guioptions=Ace
"inoremap <S-Space> <Esc>/<++><Enter>"_c4l
