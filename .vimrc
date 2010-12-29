set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu      
set hidden  " Easy swapping between buffers w/o saving
set history=1000    " Increase command history
runtime macros/matchit.vim  " Allows % to match conditionals (if/elif/etc)

noremap j gj
noremap k gk

" shows tabs and newlines when hitting \l
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,trail:-,precedes:-,nbsp:-,extends:»

" Encoding
set encoding=utf-8

" For file/command completion
set wildmenu
set wildmode=list:longest

" Smart case searching
set ignorecase
set smartcase

" Moves three characters before you hit the end of the right screen
set scrolloff=3

" Consolidates swap files into home directory
set backupdir=~/.vimswp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vimswp,~/.tmp,~/tmp,/var/tmp,/tmp

" Displays info on where you are in the file
set ruler

" Load filetype-specific options
syntax on
filetype on
filetype plugin on

" Hilight search terms dynamically as typed.
set hlsearch
set incsearch
" But F2 will turn it off, because it's annoying.
nmap <silent> <F2> :silent :nohlsearch<CR>

" ` is more useful than ' but less accessible.
nnoremap ' `
nnoremap ` '

" Specific to MiniBufExplore plugin
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Retab every file to use spaces
retab

