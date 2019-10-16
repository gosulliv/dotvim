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

if executable('rg')
  set grepprg=rg\ --vimgrep
endif

if executable('fd')
  let g:ctrlp_user_command = 'fd'
  " fd is fast enough for no caching
  let g:ctrlp_use_caching = 0
endif

" GUI
" clear menu and such
if has("gui_running")
	set guifont=Anonymous\ Pro\ 12
  set guioptions=
endif

colorscheme OceanicNext

noremap <F12> :NERDTreeToggle

abbreviate rtst mod tests {#[test]fn test() {}}


au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7

