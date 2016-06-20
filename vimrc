if has("syntax")
  syntax on
endif

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set nu
set tabstop=4
set shiftwidth=4
set cursorline
set autoindent
set foldmethod=indent
set foldlevelstart=99

"Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

"vim bundle
Plugin 'VundleVim/Vundle.vim'

"auto complement
Plugin 'Valloric/YouCompleteMe'

"syntax checking
Plugin 'scrooloose/syntastic'

"Insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'

"explorer
Plugin 'scrooloose/nerdtree'

"commenter
Plugin 'scrooloose/nerdcommenter'

"xdebug for php
Plugin 'vim-scripts/Xdebug'

"colorscheme
Plugin 'tomasr/molokai'
colorscheme molokai

filetype plugin indent on
"Vundle end

"NERDTree config
map <C-n> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree

"ycm预览窗口离开插入模式后自动关闭
autocmd InsertLeave * if pumvisible()==0|pclose|endif

"ycmd配置文件
let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf=0
