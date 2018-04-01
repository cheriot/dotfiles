set nocompatible              " be iMproved, required by [Vundle]
filetype off                  " required by [Vundle]

" Vundle & Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() " Keep Plugin commands between vundle#begin/end.
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'solarnz/thrift.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'derekwyatt/vim-scala'
Plugin 'reasonml-editor/vim-reason-plus'

call vundle#end()
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable AutoSave.
let g:auto_save = 1
" do not save while in insert mode so syntastics/pylint are usable
let g:auto_save_in_insert_mode = 0

" Syntastic
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225'

" Show line numbers.
set number

" Syntax highlighting.
syntax on

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
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Change the color of the matching paren so it looks different than the
" cursor.
hi MatchParen cterm=bold ctermbg=none ctermfg=blue

"during insert, kj escapes, `^ is so that the cursor doesn't move
"inoremap kj <Esc>`^
inoremap kj <Esc>
"during insert, lkj escapes and saves
"inoremap lkj <Esc>`^:w<CR>
inoremap lkj <Esc>:w<CR>
"during insert, lkj escapes and saves and QUITS
inoremap ;lkj <Esc>:wq<CR>
