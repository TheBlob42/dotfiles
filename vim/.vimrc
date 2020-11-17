" don't try to be vi compatible
set nocompatible

" turn on syntax highlighting
syntax on

" show line numbers
set number

" blink cursor on error instead of beeping
set visualbell

" encoding
set encoding=utf-8

" allow hidden buffers
set hidden

" show commands in status line
set showcmd

" better command-line completion
set wildmenu

" show matching brackets
set showmatch

" turn of backup files
set nobackup

" highlight searches
set hlsearch
set incsearch
set showmatch

" use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Y should yank till the end of the line
map Y y$

" custom escape key sequence for insert & visual mode
:imap fd <Esc>
:vmap fd <Esc>

" make the ALT key work in the terminal
" see: https://vim.fandom.com/wiki/Get_Alt_key_to_work_in_terminal
set <A-j>=j
set <A-k>=k

" move lines up and down easily
" see: https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
