" This makes vim invoke Latex-Suite when you open a tex file.
 filetype plugin on

 " IMPORTANT: win32 users will need to have 'shellslash' set so that
 " latex can be called correctly.
 set shellslash

 " IMPORTANT: grep will sometimes skip displaying the file name if
 " you search in a single file. This will confuse Latex-Suite.
 " Set your grep program to always generate a file-name.
 set grepprg=grep\ -nH\ $*

 " OPTIONAL: This enables automatic indentation as you type.
 filetype indent on

 " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files
 " defaults to 'plaintex' instead of 'tex', which results in vim-
 " latex not being loaded.  The following changes the default
 " filetype back to 'tex':
 let g:tex_flavor='latex'
 let g:Tex_DefaultTargetFormat='pdf'
 let g:Tex_CompileRule_pdf = 'pdflatex
			 \ -interaction nonstopmode
			 \ -shell-escape $*'
 let g:Tex_SmartKeyQuote = 0 " Disable smart quotes(auto ``'')

" SetXeTex changes the compilerule to work with certain packages.
function SetXeTex()
	let g:Tex_CompileRule_pdf = 'xelatex
				\ -aux-directory=/tmp/
				\ --synctex=-1
				\ -src-specials
				\ -interaction=nonstopmode
				\ $*'
endfunction
map <Leader>lx :<C-U>call SetXeTex()<CR>
