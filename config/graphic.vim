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

	" C-Tab, C-S-Tab as jump to tabs
	" Note: won't work in a terminal
	" https://stackoverflow.com/questions/1646819/how-can-i-map-ctrl-tab-to-something-in-vim
	map <C-Tab> 	:tabnext<CR>
	imap <C-Tab> 	<C-O>:tabnext<CR>
	map <C-S-Tab>	:tabprev<CR>
	imap <C-Tab>	<C-O>:tabprev<CR>
endif
