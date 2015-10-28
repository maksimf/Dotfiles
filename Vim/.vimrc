" -----
" Plugins
" -----
call plug#begin('~/.vim/plugged')

" UI
Plug 'whatyouhide/vim-gotham'

Plug 'airblade/vim-gitgutter'

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

Plug 'ctrlpvim/ctrlp.vim'

let g:ctrlp_working_path_mode = 'c'

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

Plug 'majutsushi/tagbar'

" Syntax
Plug 'scrooloose/syntastic'

Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rails'
Plug 'kchmck/vim-coffee-script'

Plug 'bronson/vim-trailing-whitespace'

Plug 'ingydotnet/yaml-vim'

Plug 'digitaltoad/vim-jade'

Plug 'wavded/vim-stylus'

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

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

set noshowmode

" -----
"  GUI
" -----
set guioptions-=r

set guioptions-=L

set noantialias

set clipboard=unnamed

set guifont=Terminus\ (TTF):h18

" OpenLastFile
autocmd VimEnter * nested if
  \ argc() == 0 &&
  \ bufname("%") == "" |
  \   exe "normal! `0" |
  \ endif

" -----
"  /GUI
" -----

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

map <leader>f :CtrlP<cr>
map <leader>fr :CtrlPRoot<cr>
