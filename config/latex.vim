" This makes vim invoke latex-box when you open a tex file.
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
