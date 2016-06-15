" Show line numbers
se nu

" Status bar
se laststatus=2
se ruler
se cmdheight=2
" 
se statusline=%n%1*▌%{(&modified?'✘':'✓')}\ %1*%{&ff},%{&fenc}%{(&bomb?',BOM':'')}%Y%0*▌%F%=%*%b=%Bh@%c:%l

se hid
se backspace=eol,start,indent
se whichwrap+=<,>,h,l
se ignorecase
se hlsearch
se incsearch
se mouse=a
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colo solarized
se background=dark

" HiLight matching brackets
se showmatch 

" Fold
se fdc=4

" Indent
se sw=4 ts=4
filetype indent on

" History
se history=700

filetype plugin on
syntax enable
se background=dark
se enc=utf-8
se ffs=unix
se noswapfile
se nobackup
se nowb


" Global commands
"let mapleader="*"
"let g:mapleader="*"

nmap <silent> <A-Right> :bnext<CR>
nmap <silent> <A-Left> :bprev<CR>

"au InsertEnter * hi normal ctermbg=187
"au InsertLeave * hi Normal ctermfg=244 ctermbg=187
