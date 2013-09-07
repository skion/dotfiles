# https://github.com/tpope/vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin on
filetype plugin indent on

# allow vim: configuration comments in source files
set modeline
set background=dark

let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
