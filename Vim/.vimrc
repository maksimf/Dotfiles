" -----
" Plugins
" -----
call plug#begin('~/.vim/plugged')

" UI
Plug 'whatyouhide/vim-gotham'

Plug 'airblade/vim-gitgutter'

" Fancy start screen
Plug 'mhinz/vim-startify'
let g:startify_list_order = [
			\ ['Bookmarks'],
			\ 'bookmarks',
			\ ['Most recent files'],
			\ 'files',
			\ ['Most recent files from current directory'],
			\ 'dir',
			\ ['Sessions'],
			\ 'sessions'
			\ ]
let g:startify_bookmarks = [
			\ '~/Code/Rambler/secretmag/frontend',
			\ '~/Code/Rambler/secretmag/backend',
			\ '~/Code/Rambler/secretmag/ed-secretmag',
			\ '~/Code/Germen',
			\ '~/Code/Sale-Monster'
			\ ]
" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

Plug 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode='c'
let g:ctrlp_show_hidden=1
let g:ctrlp_open_new_file='r'

Plug 'majutsushi/tagbar'

" Syntax
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rails'

call plug#end()
" -----
" /Plugins
" -----

" -----
" Options
" -----
colorscheme gotham256
set background=dark

set cursorline

set nu

" Backup
set nobackup
set noswapfile

set undofile
set undolevels=500

" Auto-open NERDTree on startup
au VimEnter *  NERDTree
" -----
" /Options
" -----

" -----
" Key mappings
" -----
map <F5> :NERDTreeToggle<cr>
imap <F5> <Esc>:NERDTreeToggle<cr>
