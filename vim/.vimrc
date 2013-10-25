" https://github.com/tpope/vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" https://github.com/altercation/vim-colors-solarized
syntax on
set background=dark
colorscheme solarized

" allow vim configuration comments in source files
set modeline
filetype plugin on
filetype plugin indent on

let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
