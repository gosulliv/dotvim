runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
call  pathogen#helptags()

syntax on
filetype plugin indent on

autocmd BufNewFile,BufRead *.md set filetype=markdown

"colorscheme badwolf
colorscheme vividchalk
set shiftwidth=2 tabstop=2 expandtab
"set colorcolumn=100
set hlsearch incsearch smartcase
set noautoread

set backspace=indent,eol,start
set complete-=i
set smarttab

set ruler

noremap <F3> :noh

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" https://robots.thoughtbot.com/faster-grepping-in-vim
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

set noautoread noautowriteall noautowrite noautochdir


"inoremap <C-U> <C-G>u<C-U>
" vim:set ft=vim et sw=2:
