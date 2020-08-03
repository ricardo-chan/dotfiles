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
    Plug 'mattn/emmet-vim'      " emmet vim
    Plug 'ap/vim-css-color'     " Color preview for css files
    Plug 'alvan/vim-closetag'   " automatically close tags ex. <html></html>
    Plug 'tpope/vim-surround'   " surround stuff faster
        
    " Commentary
    Plug 'tpope/vim-commentary'

    " vimwiki
    Plug 'vimwiki/vimwiki'

    " Display features
    Plug 'vim-airline/vim-airline'      " status bar
    Plug 'tomasiser/vim-code-dark'      " VS Code-like theme
    Plug 'airblade/vim-gitgutter'       " see file changes in gutter
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " Tools
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" General settings
    set langmenu=en_US          " sets the language of the menu to english
    language en_US              " set UI language to english
    set nocompatible            " get rid of Vi compatibility mode
    set number relativenumber   " show line numbers
    syntax enable               " enable syntax highlighting
    filetype plugin on          " for vimwiki
    colorscheme codedark        " set colorscheme
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
    set cursorline              " highlight current line
    set wildmode=longest,list,full  " autocompletion
    highlight ColorColumn ctermbg=0 guibg=lightgrey

autocmd FileType tex,latex,markdown,md setlocal spell spelllang=en_us
autocmd InsertEnter * norm zz

" Key remaps
    let mapleader=" "
    let g:user_emmet_leader_key=','   " emmet is now ,

    " Split file navigation
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

    " CoC bindings
    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    " Use <c-space> to trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()
    " Use K to show documentation in preview window.
    nnoremap <silent> K :call <SID>show_documentation()<CR>
    function! s:show_documentation()
        if (index(['vim','help'], &filetype) >= 0)
          execute 'h '.expand('<cword>')
        else
          call CocAction('doHover')
        endif
    endfunction

" Git Gutter
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red


" Vim autoclose tag
" Active only for filenames like .xml, .html, .xhtml
let g:closetag_filenames = '*.html,*.xhtml,*.jsx,*.js,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xml,*.xhtml,*.jsx,*.js,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,jsx,js,tsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xml,xhtml,jsx,js,tsx'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

" Coc settings (as per README)
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
let g:coc_global_extensions = [
   \ 'coc-pairs',
   \ 'coc-html',
   \ 'coc-css'
   \ ]

" Nerdtree settings
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * NERDTree
