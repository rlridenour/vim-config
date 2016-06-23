 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
" NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'ctrlpvim/ctrlp.vim'
" NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'jnurmine/Zenburn'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'godlygeek/tabular'
NeoBundle 'joker1007/vim-markdown-quote-syntax'
NeoBundle 'rcmdnk/vim-markdown'

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


""""""""""""""""""""""""""""""""""""""""""""""""""
" General

""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Vim settings, not Vi
set nocompatible

" disable intro message
" set shortmess+=I

set grepprg=grep\ -nH\ $*



au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

set confirm

" Time to wait after ESC
set timeoutlen=2000


" Disable modelines
set modelines=0

set scrolloff=3
set showmode
set wildmenu
set wildmode=list:longest,full
set cursorline
set ttyfast
set undofile
set visualbell "don't beep

let mapleader = "\<Space>"
nnoremap <Leader>o :e<Space>

" Edit vimrc with leader-ev
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

set t_Co=256
"let g:zenburn_high_Contrast=1
" let g:zenburn_transparent = 1
colors zenburn

""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching

""""""""""""""""""""""""""""""""""""""""""""""""""

" search case-sensitivity
" Set ignorecase on
set ignorecase
set smartcase


" smart search (override 'ic' when pattern has uppers)
set scs

" Leader-space to clear highlighted search terms
nnoremap <leader><space> :noh<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout

""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent

" Set smart indenting
set smartindent

" Set tab spacing
set tabstop=4

set shiftwidth=4

" Show line and column number of cursor position
set ruler

set showcmd

" set background=dark
syntax on

" set background=dark
" colorscheme solarized

" set background=light
" colorscheme solarized

set linebreak
set spelllang=en_us
set nospell
set enc=utf-8


" Turn on line numbering. Turn it off with "set nonu"
set nu


setlocal wrap linebreak nolist
set virtualedit=all
setlocal display+=lastline

""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues

""""""""""""""""""""""""""""""""""""""""""""""""""

" show matching brackets for a moment
set showmatch

" how many tenths of a second to blink matching brackets for
set matchtime=5

" do not highlight searched phrases
set hlsearch

" but do highlight as you type you search phrase 
set incsearch

noremap  <buffer> <silent> k gk
"noremap  <buffer> <silent> gk k
noremap  <buffer> <silent> j gj
"noremap  <buffer> <silent> gj j
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$



noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>


"Use jk to escape
inoremap jk <Esc>
inoremap kj <Esc>

nnoremap ; :


" Window splitting

nmap <silent> <leader>sh :leftabove vnew<cr>
nmap <silent> <leader>sl :rightbelow vnew<cr>
nmap <silent> <leader>sk :leftabove new<cr>
nmap <silent> <leader>sj :rightbelow new<cr>
nmap <silent> <leader>swh :topleft vnew<cr>
nmap <silent> <leader>swl :botright vnew<cr>
nmap <silent> <leader>swk :topleft new<cr>
nmap <silent> <leader>swj :botright new<cr>

" Scroll the window next to the current one
"   (especially useful for two-window split)
nmap <silent> <leader>j <c-w>w<c-d><c-w>W
nmap <silent> <leader>k <c-w>w<c-u><c-w>W



augroup mkd

  autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;

augroup END

" Set initial fold level to 4
set foldlevelstart=4

" Reload vimrc with rv
nnoremap rv :source $MYVIMRC<CR> 

:set hidden


