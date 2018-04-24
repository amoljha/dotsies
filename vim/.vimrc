"General vim settings:

"Enabling syntax:
syntax enable

"Dark background:
set background=dark

"Set line number:
set number

"Set cursor:
set cursorline

"Setting the font here:
if has('gui_running')
  set guifont=Fira\ Mono\ Medium\ 9
endif

"Colorscheme settings:
colorscheme gruvbox

"Plugin manager settings:
call plug#begin('~/.vim/plugged')

"Different plugins listed here:

"Syntastic, syntax checker:
Plug 'scrooloose/syntastic'

"Airline, a tabline, status bar for vim:
Plug 'bling/vim-airline'

"Fugitive, a git wrapper:
Plug 'tpope/vim-fugitive'

"Gruvbox, my favorite color scheme of all time:
Plug 'morhetz/gruvbox'

" Nerd Tree, a tree explorer:
Plug 'scrooloose/nerdtree'

" Git gutter; a tool for showing git diff:
Plug 'airblade/vim-gitgutter'

" For commeting blocks of code:
Plug 'scrooloose/nerdcommenter'

"For fuzzy finding:
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

"Different settings for different plugins:

"Settings for syntastic:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Settings for NERDTree:
autocmd vimenter * NERDTree
