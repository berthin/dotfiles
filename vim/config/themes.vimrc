" -- Colors and fonts
"

set t_Co=256

" Enable syntax highlighting
syntax enable

" Set colorscheme
" colorscheme railscasts 

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" airline
let g:airline#extensions#tabline#enabled = 1

" to install powerline fonts: https://github.com/powerline/fonts
let g:airline_powerline_fonts = 1

" set theme, see: https://github.com/vim-airline/vim-airline/wiki/Screenshots
" let g:airline_theme = 'deus'
let g:airline_theme='bubblegum'

hi Search cterm=NONE ctermfg=red ctermbg=white
hi Visual cterm=NONE ctermfg=blue ctermbg=white
