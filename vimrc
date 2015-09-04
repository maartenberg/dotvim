" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

if has('win32')
	let scriptdir = "~/vimfiles"
else
	let scriptdir = "~/.vim"
endif
exec "source " . scriptdir . "/config/basic.vim"
exec "source " . scriptdir . "/config/commands.vim"
exec "source " . scriptdir . "/config/latex.vim"

execute pathogen#infect()
