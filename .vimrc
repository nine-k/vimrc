set tabstop=3
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set hlsearch
highlight ExtraWhitespace ctermbg=LightBlue guibg=LightBlue
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=LightBlue guibg=LightBlue
match ExtraWhitespace /\s\+\%#\@<!$/
syntax on
syntax enable
set number
set cursorline
set showmatch

"let g:neodark#background='dark'
colorscheme quantum

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Bundle 'roman/golden-ratio'
call vundle#end()
filetype plugin indent on
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"airline doesn't work w/o next line
set laststatus=2
let g:airline#extensions#tabline#enabled=1
noremap <C-Left> :tabprevious<CR>
noremap <C-Right> :tabnext<CR>
au BufRead,BufNewFile *.launch set filetype=xml
