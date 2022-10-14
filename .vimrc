if (has("termguicolors"))
    "the the let lines from below were found online tbh
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'drewtempelmeyer/palenight.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bfrg/vim-cpp-modern'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'ycm-core/YouCompleteMe'

call plug#end()

" }}}

" set backspace=indent,eol,start

" VIMSCRIPT -------------------------------------------------------------- {{{

    "This will enable code folding.
    "Use the marker method of folding.
    "augroup filetype_vim
        "autocmd!
        "autocmd FileType vim setlocal foldmethod=marker
    "augroup END

    " More Vimscripts code goes here.

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" }}}

" Asthetics --------------------------------------------------------------{{{

set relativenumber

set cursorline "Highlight cursor horizontally

set cursorcolumn "Highlight cursor vertically

syntax on "syntax highlighting

set number "add numbers to each line on left-hand side

"set color scheme

set background=dark
colorscheme palenight

"for markdown preview
let g:mkdp_theme = 'dark'

let g:rainbow_active = 1 "something for vim-rainbow

"stops auto folding
set nofoldenable

" }}}

" Searching ------------------------------------------------------{{{

set showmatch "show matching words during search

set hlsearch "hgihlight when search

set incsearch "WHil searching thro file incrementally highlight matching characters as you type

set ignorecase "Ignore capital letters during search

set smartcase "will overide ignore case option is searching for capital letters

"}}}

filetype plugin on "allow plugin
filetype indent on "load an indent file for detected file type
set encoding=UTF-8 "something for devicons
set nocompatible "disable compatibility with vi which can cause unexpected issues
filetype on "enable file detection
set shiftwidth=4 "Set shift width to 4 spaces
set tabstop=4 "Set tab width to 4 columns aka the norm for us
set expandtab "use space chars instea of tabs
set wildmenu "audo completion after pressing tab
set wildmode=list:longest "whilemenu behave similar to Bash completion
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx "Ignoreing certain files we dont want to edit in vim
set nowrap "Text does not wrap and go on the next line if it gets to long by default
