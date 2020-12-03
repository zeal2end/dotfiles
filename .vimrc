
set hls
set is
set gfn=Fixedsys:h10
set ts=4
set sw=4
set si
set smartcase
set smarttab
set clipboard=unnamedplus
set mouse=a
set nojoinspaces
set ruler

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

autocmd filetype cpp nnoremap <F8> :w <bar> !g++ -std=c++17 -DLOCAL -Wall -Wshadow % -o %:r -Ofast -Wconversion <CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -DLOCAL -Wall -Wshadow -Wextra % -o %:r -Ofast -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=address -fsanitize=undefined -fno-sanitize-recover -fstack-protector <CR>

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'ycm-core/YouCompleteMe'

" Add plugins here

call vundle#end()
filetype plugin indent on

let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = ['help', 'markdown', 'rst', 'org', 'text', 'asciidoc', 'tex', 'mail']
let g:airline#extensions#wordcount#filetypes += ['pandoc']


