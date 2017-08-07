" source $HOME/dotfiles/vim/config/keys.vimrc
set rtp+=~/dotfiles/vim/bundle/Vundle.vim

call vundle#begin()

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NerdTree
Plugin 'scrooloose/nerdtree'

" theme
Plugin 'jpo/vim-railscasts-theme'

" Command T
Plugin 'wincent/command-t'
" If appears 'Vim Command-T plugin error: could not load the C extension'
" go to ~/.vim/bundle/command-t and run 'rake make'
" see https://stackoverflow.com/questions/7923002


" Ack.vim
Plugin 'mileszs/ack.vim'


call vundle#end()

