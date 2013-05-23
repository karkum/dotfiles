"master
" Use vim settings
set nocompatible

" Pathogen stuff;
execute pathogen#infect()

" Nerdtree key maped to F2
map <F2> :NERDTreeToggle<CR>

" Toggle spelling
map <F3> :setlocal spell! spelllang=en_us<CR>

" Toggle highlighting
map <F4> :set hlsearch!<cr>

" Set line numbers and ruler
set number
set ruler

" The following 3 lines enforce no tabs in file and all tabs are 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Bigger history
set history=200

" Do indentation
set autoindent

" Highlight search
set hlsearch

" Incremental search
set incsearch

" Search center found results
map N Nzz
map n nzz

" Better search 
set ignorecase
set smartcase

" Auto indent
set ai
set si

" Wrap text
set wrap

" hide buffers
set hidden

" show commands
set showcmd

" show menu for commands
set wildmenu

"no errors
set visualbell 
set noerrorbells

" persistent undo (source:https://github.com/skwp/dotfiles/blob/master/vimrc)
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" tab shortcuts
map <C-t> :tabnew<CR>
"map <C-w> :tabclose<CR>

" navigating between splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" I do :W too often
command! W :w

" filetype options
filetype plugin on
filetype indent on

" syntax highlighting
syntax enable
syntax on

