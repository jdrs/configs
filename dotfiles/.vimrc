set nocompatible
filetype off

" Syntax highlighting
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" PLUGINS STARTE HERE

" Syntastic - syntax checker
Plugin 'Syntastic'

" Auto Pairs - auto pairs (), {}, and []
Plugin 'Auto-Pairs'

" vim-airline - slick, lightweight status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-fugitive - show git branch on airline statusline
Plugin 'tpope/vim-fugitive'

" groovy syntax
Plugin 'rdolgushin/groovy.vim'

" NERDTree - The NERD Tree allows you to explore your filesystem and to open
" files and directories.
Plugin 'scrooloose/nerdtree.git'

" PLUGINS END HERE
call vundle#end()
filetype plugin indent on

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
""""""""""""""""""""""""""""""""""""""""""""""

"" OTHER SETTINGS"
" Enable mouse usage (all modes)
set mouse=a
set background=dark

"set 256 color
set t_Co=256

" show line numbers
set relativenumber
set number

""" AIR-LINE
" user powerline fonts for the symbols
let g:airline_powerline_fonts = 1

" for vim-airline to show up
set laststatus=2

" set theme
let g:airline_theme='badwolf'

" show tabs
let g:airline#extensions#tabline#enabled = 1
" show only the file name
let g:airline#extensions#tabline#fnamemod = ':t'
""" AIR-LINE END

""" NERDTree
" close NERDTree if its the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""" USER MAPS 
" F12 - Quit without saving
map <F12> :q!<CR>
" F7 - Previous tab
map <F7> :tabp<CR>
" F8 - Next tab
map <F8> :tabn<CR>
" Ctrl+n - opens NERDTree
map <C-n> :NERDTreeToggle<CR>

