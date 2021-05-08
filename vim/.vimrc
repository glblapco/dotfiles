set nocompatible              " be iMproved, required
set nomodeline
filetype off
set encoding=utf-8
set fileencoding=utf-8
" =============================================================================
" Plugin Manager Setup
" =============================================================================
"
filetype off

" Install the plugin manager if it doesn't exist
let s:plugin_manager=expand('~/.vim/autoload/plug.vim')
let s:plugin_url='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if empty(glob(s:plugin_manager))
  echom 'vim-plug not found. Installing...'
  if executable('curl')
    silent exec '!curl -fLo ' . s:plugin_manager . ' --create-dirs ' .
          \ s:plugin_url
  elseif executable('wget')
    call mkdir(fnamemodify(s:plugin_manager, ':h'), 'p')
    silent exec '!wget --force-directories --no-check-certificate -O ' .
          \ expand(s:plugin_manager) . ' ' . s:plugin_url
  else
    echom 'Could not download plugin manager. No plugins were installed.'
    finish
  endif
  augroup vimplug
    autocmd!
    autocmd VimEnter * PlugInstall
  augroup END
endif

" Create a horizontal split at the bottom when installing plugins
let g:plug_window = 'botright new'

let g:plug_dir = expand('~/.vim/bundle')
call plug#begin(g:plug_dir)

Plug 'antoyo/vim-licenses'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'

""" All of your Plugins must be added before the following line
" Add plugins to &runtimepath
call plug#end()   "required

let g:licenses_copyright_holders_name = 'Biel A. P. <biel@aperio.org>'
let g:licenses_authors_name = 'Biel A. P. <biel@aperio.org>'
set nowrap
set ruler
set wildmenu
set incsearch
set confirm
set nonumber
"set laststatus=2
set list
set listchars=
set listchars+=precedes:<,extends:>
"set listchars+=tab:..
set listchars+=tab:\|\ 

set sidescroll=5
set scrolloff=5
set cc=80
set title
"colorscheme sv
syntax on
set tabstop=2
set shiftwidth=2
set ai
set guioptions=Ace
"inoremap <S-Space> <Esc>/<++><Enter>"_c4l
iabbrev blogtemp    <html><CR><head><CR><title>0xbiel</title><CR><link rel="stylesheet" href="./style.css"</link><CR><meta name="viewport" content="width=device-width, initial-scale=1"><CR></head><CR><body><CR><pre><CR></pre><CR></body><CR></html>

autocmd! BufNewFile,BufReadPre,FileReadPre  *.hs setlocal expandtab
