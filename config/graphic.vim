" graphic.vim: settings for colours and such

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("gui_running")
	colorscheme Tomorrow-Night-Eighties
	set guioptions=""
	set encoding=utf-8 "Remove latin

	" Font
	if has("gui_win32")
		set guifont=Inconsolata:h11:cANSI
	elseif has("gui_gtk2")
		set guifont=Inconsolata\ 11
	endif
endif
