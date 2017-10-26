" ==== GENERAL ====

set number "enable line numbers
set wildmenu
set nocompatible
set encoding=utf-8

" Mapleader allows to do extra key combinations like <leade>w for saving
let mapleader = ","
let g:mapleader = ","
" Fast saving
nmap <leader>w :w!<cr>

map q <Nop>

" ============== UI ==============

"set background=dark
syntax on
hi Visual term=reverse cterm=reverse guibg=Grey
try
colorscheme molokai
catch
endtry

" set 8 lines to cursos 
set so=8

" Always show current position
set ruler

set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" A buffer becomes hidden when it is abandoned
set hid

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Start to search immediately
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Margin on the left
"set foldcolumn=1

" =========== Text, tab and indent related =====================

" Be smart when using tabs ;)
set smarttab

" 1 tab = 4 spaces
set tabstop=4
set shiftwidth=4

set wrap "Wrap lines
set cindent
set cinkeys-=0#

" =========== VISUAL mode related ==================
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>

" ================== Vundle ==================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'itchyny/lightline.vim'
Plugin 'tomasr/molokai'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set laststatus=2

