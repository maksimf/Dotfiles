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

Plug 'wincent/command-t'

Plug 'majutsushi/tagbar'

" Syntax
Plug 'scrooloose/syntastic'
let g:syntastic_ruby_checkers = ['rubocop']

Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rails'
Plug 'kchmck/vim-coffee-script'

Plug 'bronson/vim-trailing-whitespace'

Plug 'ingydotnet/yaml-vim'

Plug 'digitaltoad/vim-jade'

Plug 'wavded/vim-stylus'

Plug 'itchyny/lightline.vim'

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

let NERDTreeIgnore = ['\.DS_Store$', '\.git$', '\.idea$', '\.sass-cache$', '\.un\~$']

set laststatus=2 " Always show status line

set expandtab
set tabstop=2
set shiftwidth=2

set backspace=indent,eol,start
" Backup
set nobackup
set noswapfile

set undofile
set undolevels=500

let g:lightline = { 'colorscheme': 'gotham256' }

" -----
" /Options
" -----

" -----
" Key mappings
" -----
let mapleader=','

map <F5> :NERDTreeToggle<cr>
imap <F5> <Esc>:NERDTreeToggle<cr>

map <leader>fw :FixWhitespace<cr>

map <leader>sc :SyntasticCheck<cr>
