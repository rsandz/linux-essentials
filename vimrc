" Vim Configuration
" By Ryan Sandoval

" Plugins
" -------

" Vim Plugin auto install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Status Line
" -----------
let g:airline_theme='bubblegum'

" Basic Configs
" -------------
filetype indent plugin on
set nu
set wrap

" Search Configs
" --------------
set hlsearch
set incsearch
set smartcase

" Tabs and Indentation
" --------------------
set tabstop=4
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Key Mappings
" ------------

" Quick Windows
noremap <C-j> <C-W><C-j>
noremap <C-h> <C-W><C-h>

noremap <C-k> <C-W><C-k>
noremap <C-l> <C-W><C-l>
