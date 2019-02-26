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

" -- Tag Bar
" Note: tab-bar is unable because it gets annoying
" map <C-m> :TagbarToggle<CR>

"-- Map jk to ESC
inoremap jk <ESC>
inoremap jK <ESC>
inoremap Jk <ESC>
inoremap JK <ESC>

"-- Map moves (up-down)
map <S-j> <C-D>
map <S-k> <C-U>

"-- Map CtrlP
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" CtrlP Tag/buffer
nnoremap <leader>p :CtrlPTag<cr>
nnoremap <leader>. :CtrlPBuffer<cr>
" CtrlP Line
nnoremap <leader>f :CtrlPLine<cr>

" Fold inside curly braces
map <C-f> Vi{zfzz

" Change between source and headers
map <C-g> :call SwapSourceHeader()<cr>

nnoremap <leader>s :call AckCurrentWord()<cr>
