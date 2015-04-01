runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
filetype plugin indent on

autocmd BufNewFile,BufRead *.md set filetype=markdown

colorscheme badwolf
set shiftwidth=2 tabstop=2 expandtab
"set colorcolumn=100
set hlsearch incsearch smartcase
set noautoread

noremap <F3> :noh
