" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

source ~/.vim/config/basic.vim
source ~/.vim/config/commands.vim
source ~/.vim/config/latex.vim

execute pathogen#infect()
