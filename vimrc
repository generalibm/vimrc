
"----------------------------"
"----------Vundle------------"
"----------------------------"
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Let Vundle manage itself
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on


let g:auto_save = 1

"----------------------------"
"--------   NERDTree  -------"
"----------------------------"
"set shortcut key
"map <F4> :NERDTreeMirror<CR>
"map <F4> :NERDTreeToggle<CR>

"----------------------------"
"--------    CtrlP    -------"
"----------------------------"
let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = 'v'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }


"----------------------------"
"--------  Syntastic  -------"
"----------------------------"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let b:syntastic_cpp_cflags = '-std=c++11 -w'

"----------------------------"
"------ YouCompleteMe -------"
"----------------------------"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"----------------------------"
"--------Global Config-------"
"----------------------------"
syntax on
set nu
"colorscheme darkblue
set noswapfile
set nobackup
set mouse=a

filetype on

set history=1000
set cursorline
"set cursorcolumn

set autoindent
set cindent
set smartindent

"set expandtab " space grid replace tab
set backspace=2
set tabstop=4
set shiftwidth=4
set softtabstop=4

set linebreak
set showmatch

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
"set fileformats=unix
"set encoding=prc
set encoding=utf-8

set hlsearch
set incsearch

set laststatus=2
set ruler

"no \n
set nowrap


autocmd BufNewFile *.[ch],*.hpp,*.cpp,*.cc exec ":call Addreadme()"

function Addreadme()
    call setline(1, " ///")
	call append(1, " /// @file    " .expand("%:t"))
	call append(2, " /// @author  lemon(haohb13@gmail.com)")
	call append(3, " /// @date    ".strftime("%Y-%m-%d %H:%M:%S"))
	call append(4, " ///")
	call append(5, " ")
	call append(6, "#include <iostream>")
	call append(7, "using std::cout;")
	call append(8, "using std::endl;")
endf


"set maplearder
let  mapleader = ","
map <silent> <leader>ee :!vim ~/.vimrc<cr>
