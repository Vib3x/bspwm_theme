
"  _ __   ___  _____   _(_)_ __ ___  
" | '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
" | | | |  __/ (_) \ V /| | | | | | |
" |_| |_|\___|\___/ \_/ |_|_| |_| |_|
"                                    
 
" ------------------------------ plugins ---------------------------------
call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'arcticicestudio/nord-vim'
    Plug 'neoclide/coc.nvim', {'branch':'release'}
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree'
    "Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/goyo.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
call plug#end()

" ------------------------- general settings -----------------------------
let mapleader=" "
colorscheme nord
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber
set incsearch
set nohlsearch
set ignorecase smartcase
set ts=4 expandtab shiftwidth=4 smarttab
set wildmode=longest,list,full
set splitbelow splitright
set cmdheight=2
set updatetime=100
set conceallevel=2
autocmd filetype tex set spell spelllang=en_us,de_de
set cursorline
set hidden
set mouse=a
set nobackup
set clipboard+=unnamedplus

" -------------------------- statusline ----------------------------------
set statusline=
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %f

set statusline+=%=
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]

" ---------------------- special characters ------------------------------
imap `a ä
imap `A Ä
imap `u ü
imap `U Ü
imap `o ö
imap `O Ö
imap `s ß

"--------------------------- hardmode ------------------------------------
 noremap  <Up> ""
 noremap! <Up> <Esc>
 noremap  <Down> ""
 noremap! <Down> <Esc>
 noremap  <Left> ""
 noremap! <Left> <Esc>
 noremap  <Right> ""
 noremap! <Right> <Esc>

" -------------------------- compiler ------------------------------------
let libs='gtk+-3.0 sdl2 SDL2_image'
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -lm -std=c99 $(pkg-config --cflags --libs '.libs.' ) -o ./build/'.shellescape('%:r').' && ./build/'.shellescape('%:r')<CR>
autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' -lm -D DEBUG && ./'.shellescape('%:r')<CR>
autocmd filetype tex nnoremap <F4> :w <bar> exec '!pdflatex '.shellescape('%')<CR>

" ------------------------- shortcuts ------------------------------------
imap jk <Esc>
imap <C-Space> <C-n>
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>t :NERDTreeToggle<Enter>
map <leader>g :Goyo \| set linebreak<CR>
map <leader>s :setlocal spell! spelllang=de_DE<CR>
map <leader>S :setlocal spell! spelllang=en_US<CR>
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" ---------------------- plugin configs ----------------------------------
" commenter
vmap ++ <plug>NERDCommenterToggle<CR>
nmap ++ <plug>NERDCommenterToggle<CR>
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'

" NERDTree
let NERDTreeShowHidden=1
