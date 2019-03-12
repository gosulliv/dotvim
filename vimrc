syntax on
filetype plugin indent on

execute pathogen#infect()

set nocompatible

" remember more commands and search history
set history=10000

set tabstop=2 shiftwidth=2 expandtab
set number

set cindent smartindent 

set incsearch hlsearch
set smartcase ignorecase

" Show matching braces
set showmatch


" quick quickfix
noremap [q :cprevious
noremap ]q :cnext

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" GUI
" clear menu and such
if has("gui_running")
	set guifont=Terminus\ 12
  set guioptions=
endif

colorscheme OceanicNext

noremap <F12> :NERDTreeToggle

