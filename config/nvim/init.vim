" Installing vim-plug if not installed
" Uncomment if you want automatic install of vim-plug
"if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
"	echo "Downloading junegunn/vim-plug to manage plugins..."
"	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
"	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
"	autocmd VimEnter * PlugInstall
"endif

" Installing plugins
call plug#begin('~/.vim/plugged')

    " Web dev plugins
    Plug 'mattn/emmet-vim'   " emmet vim
    Plug 'ap/vim-css-color'  " Color preview for css files

    " Display features
    Plug 'vim-airline/vim-airline'      " status bar
    Plug 'tomasiser/vim-code-dark'      " VS Code-like theme
    Plug 'airblade/vim-gitgutter'       " see file changes in gutter

    " Tools
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" General settings
    set langmenu=en_US          " sets the language of the menu to english
    language en_US              " set UI language to english
    set nocompatible            " get rid of Vi compatibility mode
    set number relativenumber   " show line numbers
    syntax enable               " enably syntax highlighting
    colorscheme codedark          " set colorscheme
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
    set clipboard+=unnamedplus  " use system clipboard
    set cursorline
    highlight ColorColumn ctermbg=0 guibg=lightgrey

autocmd FileType tex,latex,markdown,md setlocal spell spelllang=en_us


" Key remaps
    let mapleader=" "
    let g:user_emmet_leader_key=','   " emmet is now ,

    " Split file navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Git Gutter
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
