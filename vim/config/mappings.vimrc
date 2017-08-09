nnoremap <F2> :call GetIssueNumberGit()<CR>

"--Vim Tmux navigator mappings
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>
"
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1


"-- NERDTree
" Customize NERDTree
map <C-n> :NERDTreeToggle<CR>

"-- Map jk to ESC
inoremap jk <ESC>
inoremap jK <ESC>
inoremap Jk <ESC>
inoremap JK <ESC>

"-- Map moves (up-down)
map <S-j> <C-D>
map <S-k> <C-U>

"-- Map CtrlP+Ctags
"nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>p :CtrlPTag<cr>
