" graphic.vim: settings for colours and such

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("gui_running")
	" Default GUI Colours
	let s:foreground = "cccccc"
	let s:background = "2d2d2d"
	let s:selection = "515151"
	let s:line = "393939"
	let s:comment = "999999"
	let s:red = "f2777a"
	let s:orange = "f99157"
	let s:yellow = "ffcc66"
	let s:green = "99cc99"
	let s:aqua = "66cccc"
	let s:blue = "6699cc"
	let s:purple = "cc99cc"
	let s:window = "4d5057"

	hi clear
	syntax reset
	let g:colors_name = "Tomorrow-Night-Eighties"

	" Font
	if has("gui_win32")
		set guifont=Inconsolata:h11:cANSI
	elseif has("gui_gtk2")
		set guifont=Inconsolata\ 11
	endif
endif
