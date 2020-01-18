let mapleader=" "

" Plugins:
call plug#begin('~/.vim/plugged')
    Plug 'neoclide/coc.nvim', {'branch':'release'}
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdcommenter'
    Plug 'junegunn/goyo.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
call plug#end()

" some basics:
    colorscheme gruvbox
    filetype plugin on
    syntax on
    set encoding=utf-8
    set number relativenumber
    set incsearch
    set ignorecase
    set ts=4 expandtab shiftwidth=4 smarttab
    set wildmode=longest,list,full
    set splitbelow splitright
    set cmdheight=2
    set updatetime=100
    set conceallevel=2
    autocmd filetype tex set spell spelllang=de

" plugin configs
    " commenter
    vmap ++ <plug>NERDCommenterToggle<CR>
    nmap ++ <plug>NERDCommenterToggle<CR>
    " indentLine
    "let g:indentLine_faster = 1
    "let g:indentLine_setConceal = 1
    "let g:indentLine_char = '|'

" shortcuts:
    imap jk <Esc>
    map <leader>g :Goyo \| set linebreak<CR>
    map <leader>s :setlocal spell! spelllang=de_DE<CR>
    map <leader>S :setlocal spell! spelllang=en_US<CR>
    vnoremap <leader>y "+y
    nnoremap <leader>p "+p

" compiler
    autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' -lm && ./'.shellescape('%:r')<CR>
    autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' -lm -D DEBUG && ./'.shellescape('%:r')<CR>
    autocmd filetype tex nnoremap <F4> :w <bar> exec '!pdflatex '.shellescape('%')<CR>

" coc config
    autocmd FileType json syntax match Comment +\/\/.\+$+
    
    inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~# '\s'
    endfunction

" special characters:
    imap `a ä
    imap `A Ä
    imap `u ü
    imap `U Ü
    imap `o ö
    imap `O Ö
    imap `s ß
