set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu      
set hidden  " Easy swapping between buffers w/o saving
set history=1000    " Increase command history
"runtime macros/matchit.vim  " Allows % to match conditionals (if/elif/etc)

" Highlight over 80
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Pathogen for ~/.vim/bundle installs
call pathogen#infect() 

noremap j gj
noremap k gk
noremap <Down> <C-o>gj
noremap <Up> <C-o>gk
noremap <Down> gj
noremap <Up> gk

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
" set hlsearch
" set incsearch
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

" NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['*.pyc', '.DS_Store', '*.swp', '\~$']

" Stab at virtualenvs
so ~/.vim/bundle/virtualenv/virtualenv.vim
" SuperTab
"so ~/.vim/bundle/supertab/plugin/supertab.vim 
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"

" neocomplcache
" so ~/.vim/bundle/neocomplcache/settings.vim

" Retab every file to use spaces
retab

