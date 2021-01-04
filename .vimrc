" ==== GENERAL ====

set number "enable line numbers
set wildmenu
set nocompatible
set encoding=utf-8
set updatetime=50
set noerrorbells
set noswapfile
set nobackup


" Mapleader allows to do extra key combinations like <leade>w for saving
let mapleader = ","
let g:mapleader = ","
" Fast saving
nmap <leader>w :w!<cr>
nnoremap <leader>q :q<cr>
" descrease window vertical size
map <leader>- <press Ctrl-w>-

map q <Nop>

set nobackup
set undodir=~/.vim/undodir
set undofile

" ============== UI ==============

set background=dark
syntax on
hi Visual term=reverse cterm=reverse guibg=grey

" set 8 lines to cursos 
set so=8
set ruler

set wildmenu

set timeoutlen=200
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
set foldcolumn=0

" tree view
let g:netrw_browse_split=4
let g:netrw_banner=0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize=85
let g:netrw_preview = 1
nnoremap <leader>ve :Vexplore  <bar> :vertical resize 30<CR>
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

"map <C-n> :NERDTreeToggle<CR>
" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='term'
let g:airline_powerline_fonts = 1
" =========== Search in project ============================
" search in the current path
set path=$PWD/**

" =========== Text, tab and indent related =====================

" Be smart when using tabs ;)
set smartindent
set smarttab

" 1 tab = 4 spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
" from tab to spaces
"set expandtab

set nowrap "Dont wrap lines
set cindent
set cinkeys-=0#

" ================= Completion ===============================
let g:ycm_clangd_binary_path = "/usr/local/Cellar/llvm/10.0.0_3/Toolchains/LLVM10.0.0.xctoolchain/usr/bin/clangd"
nnoremap gd :YcmCompleter GoTo<CR>
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

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
"Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasr/molokai'
"Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set laststatus=2

try
"autocmd vimenter * 
colorscheme gruvbox
catch
endtry

