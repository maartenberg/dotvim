" basic.vim: first sourced file in vimrc

set backspace=indent,eol,start
" allow backspacing over everything in insert mode

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

" Backup directory setup
set backupdir=./.backup/,~/.backup//,~/vimbackup//,/tmp//

set number			" show line number on current line...
set relativenumber	" ... and relative line numbers on the others

set history=50		" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch		" do incremental searching

set tabstop=4		" python-style tab size, screen size limited
set shiftwidth=4	" same
set noet			" tabs will be tabs
set fdm=syntax		" foldmethod should be somewhat smart

" Don't use Ex mode, use Q for formatting
map Q gq

" Makes C-u and C-w less destructive, as they now are undoable.
inoremap <C-U> <C-G>u<C-U>
inoremap <C-w> <c-g>u<c-w>

" Enable mouse if the terminal supports it.
if has('mouse')
  set mouse=a
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  set autoindent

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 70 characters
  " 70 characters = 1 vsplit
  autocmd FileType text setlocal textwidth=70

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set auto indenting on

endif " has("autocmd")


" F2 as paste toggle in insert mode
set pastetoggle=<F2>

" C-Tab, C-S-Tab as jump to tabs
map <C-Tab> 	:tabnext<CR>
imap <C-Tab> 	<C-O>:tabnext<CR>
map <C-S-Tab>	:tabprev<CR>
imap <C-Tab>	<C-O>:tabprev<CR>

" Map backspace to removing search highlight
nnoremap <silent> <BS> :nohlsearch<CR>

" Set spelling languages
set spelllang=en,nl

autocmd FileType plaintex setlocal spell
autocmd FileType tex setlocal nospell

map z!			:set spell!<CR>

" Trailing space highlighting, taken from
" <http://vim.wikia.com/wiki/Highlight_unwanted_spaces>
 highlight ExtraWhitespace ctermbg=red guibg=red
 match ExtraWhitespace /\s\+$/
 autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
 autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
 autocmd InsertLeave * match ExtraWhitespace /\s\+$/
 autocmd BufWinLeave * call clearmatches()
