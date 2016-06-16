" Show line numbers
se nu

" Status bar
se laststatus=2
se ruler
se cmdheight=2
" 
se statusline=%4*%n%3*▌
se statusline+=%2*%{(&modified?'✘':'')}
se statusline+=%1*%{(&modified?'':'✓')}
se statusline+=\ %*
se statusline+=%3*%{&ff},%{&fenc}%{(&bomb?',BOM':'')}%Y
se statusline+=%4*▌%F%=%*%b=%Bh@%c:%l

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

" Possibly dangerous setting of executing "comments"
se modeline
se modelines=3


" Global commands
"let mapleader="*"
"let g:mapleader="*"

nmap <silent> <A-Right> :bnext<CR>
nmap <silent> <A-Left> :bprev<CR>

hi User1 ctermfg=28  ctermbg=235
hi User2 ctermfg=160 ctermbg=235
hi User3 ctermfg=245 ctermbg=235 
hi User4 ctermfg=245 ctermbg=235 term=reverse cterm=reverse

"au InsertEnter * hi normal ctermbg=187
"au InsertLeave * hi Normal ctermfg=244 ctermbg=187
