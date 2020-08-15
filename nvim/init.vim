execute pathogen#infect()

syntax on
filetype plugin indent on

" Enable AutoSave.
let g:auto_save = 1
" do not save while in insert mode so syntastics/pylint are usable
let g:auto_save_in_insert_mode = 0

" Show line numbers.
set number

" When /searching
" /copyright      Case insensitive
" /Copyright      Case sensitive
" /copyright\C    Case sensitive
" /Copyright\c    Case insensitive
set smartcase

" Tabs are 2 spaces
set tabstop=2
set expandtab
set shiftwidth=2  " indenting is 2 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs

" Keep swp files out of the way. The following directories need to be created
" manually.
set backupdir=~/.config/nvim/backup/
set directory=~/.config/nvim/swap/
set undodir=~/.config/nvim/undo/

" Change the color of the matching paren so it looks different than the
" cursor.
hi MatchParen cterm=bold ctermbg=none ctermfg=blue

" Open NERDTree at start
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
" Exit when NERDTree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
