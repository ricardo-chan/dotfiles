set nocompatible            " get rid of Vi compatibility mode
set number relativenumber   " show line numbers
syntax enable               " enably syntax highlighting
colorscheme desert          " set colorscheme
set ignorecase              " make searches case-insensitive
set ruler                   " always show info along bottom
set autoindent              " auto-indent
set tabstop=4               " tab spacing
set softtabstop=4           " unify
set shiftwidth=4            " indent/outdent by 4 columns
set shiftround              " always indent/outdent to the nearest tabstop
set expandtab               " use spaces instead of tabs
set smarttab                " use tabs at the start of a line, spaces elsewhere
set nowrap                  " don't wrap text
set incsearch               " search without pressing enter
set colorcolumn=120         " character column limit
set splitbelow splitright   " splits open below and to the right while using sp and vsp
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Installing vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Installing plugins
call plug#begin('~/.vim/plugged')

" emmet vim
Plug 'mattn/emmet-vim'

call plug#end()

" Key remaps
let mapleader=" "
let g:user_emmet_leader_key=','   " emmet is now ,

    " Split file navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l
