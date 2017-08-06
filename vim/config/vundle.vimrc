" source $HOME/dotfiles/vim/config/keys.vimrc
set rtp+=~/dotfiles/vim/vundle/Vundle.vim

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

call vundle#end()

