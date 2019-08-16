""" dein.vim """
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')

  let s:toml_dir = expand('~/.config/nvim')
  " 起動時にロードする
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 遅延読み込み時にロードする
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})
  
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable



set number "show line number
set autoindent "auto indent on newline
set tabstop=4 "tab = 4
set shiftwidth=4 "space num when auto indent
set expandtab "convert tab to space
set clipboard=unnamed "copy yanked string to clipboard
set hls "highlight searched characters
set list

"search option
set ignorecase
set smartcase
set wrapscan

set hidden "invalidate swap file
