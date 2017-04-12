set nocompatible
set nu
syntax on
set encoding=utf-8
set completeopt=preview,menu 
filetype plugin on
set ruler
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set hlsearch
set showmatch
filetype on
set t_Co=256
set laststatus=2
set selectmode=mouse,key
set selection=exclusive

" 自动加括号
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i

" enable vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" enable bundle
if filereadable(expand("~/.vimrc.bundles"))
source ~/.vimrc.bundles
endif

" Molokai
colorscheme molokai
set background=dark

" NERD Tree
nmap <F10> :NERDTreeToggle<cr>

" Airline 
let g:airline#extensions#tabline#enabled = 1
set lazyredraw  
let g:airline_theme='powerlineish'  
" 使用powerline打过补丁的字体  
let g:airline_powerline_fonts=1  
if !exists('g:airline_symbols')  
    let g:airline_symbols={}  
    endif  
"     " 关闭空白符检测  
    let g:airline#extensions#whitespace#enabled=0

" Javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
" 这一句实现在vim 编辑java 文件 时当敲入.
autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P><Down>

au BufReadPost,BufNewFile *.twig colorscheme koehler 
au BufReadPost,BufNewFile *.css colorscheme slate
au BufReadPost,BufNewFile *.js colorscheme slate2
au BufReadPost,BufNewFile *.py colorscheme molokaiyo
au BufReadPost,BufNewFile *.html colorscheme monokai
au BufReadPost,BufNewFile *.java colorscheme monokai
