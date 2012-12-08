set nocompatible
"call pathogen#infect()
syntax on
"syntax sync minlines=256
filetype plugin indent on

set nowrap
set tabstop=4 shiftwidth=4 expandtab softtabstop=4
set autoindent smartindent copyindent
set backspace=indent,eol,start
set hidden
set scrolloff=5
set t_Co=256
set noek
set mousehide mouse=a clipboard=unnamedplus
set nobackup noswapfile
set noerrorbells

if exists('+colorcolumn')
    set colorcolumn=78
endif

set number ruler
set smartcase
set wildignore+=*.swp,*.bak
set ffs=unix,dos,mac
set foldenable foldmethod=syntax
set ignorecase smartcase
set ttyfast lazyredraw
set title

set background=dark
let g:loaded_matchparen=1
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:php_folding=1
let g:javaScript_fold=1
let g:javascript_fold=1
let g:ctrlp_dotfiles = 0
let g:ctrlp_max_height = 10
let g:ctrlp_lazy_update = 1
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = 'i'
let g:ctrlp_follow_symlinks = 1
let g:NERDTreeQuitOnOpen = 1
"colorscheme jellybeans

au FileType php setl foldlevel=0 foldnestmax=2
au FileType xml setl tabstop=2 shiftwidth=2 softtabstop=2
au FileType css setl foldmethod=marker foldmarker={,}

au InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
au InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

if has("gui_running")
    set gfn=Droid\ Sans\ Mono\ 10
    set guioptions=aiAc
    set t_vb=
endif


" Mappings
nnoremap <silent> so    :NERDTreeToggle<CR>
nnoremap <silent> sO    :NERDTreeFind<CR>
nnoremap <silent> sl    :CtrlP<CR>
nnoremap <silent> sr    :CtrlPMRU<CR>
nnoremap <silent> sj    :CtrlPBuffer<CR>
