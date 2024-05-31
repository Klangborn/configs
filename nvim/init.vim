" ******* SETUP PLUGINS ******* 
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kamwitsta/nordisk'
call plug#end()
" *****************************

" ******* VIM SPECIFICS ******* 

" Disable comptability with vi which can cause issues
set nocompatible

" Enable type file detection
filetype on

" Enable plugins and load plugin for the detected file type
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax hightlighting
syntax on

set number
set noshowmode

" Highlight cursor line underneath the cursor horizontally
set cursorline

" dont use backup files
set nobackup

" use space instead of tab
set expandtab

" highlight search results
set showmatch

" number of commands to save
set history=100

colorscheme nordisk
" ********************

" **** INDENTING ***** 
"
" length of an actual \t character:
set tabstop=2
" length to use when editing text (eg. TAB and BS keys)
" (0 for ‘tabstop’, -1 for ‘shiftwidth’):
set softtabstop=-1
" length to use when shifting text (eg. <<, >> and == commands)
" (0 for ‘tabstop’):
set shiftwidth=0
" round indentation to multiples of 'shiftwidth' when shifting text
" (so that it behaves like Ctrl-D / Ctrl-T):
set shiftround

" if set, only insert spaces; otherwise insert \t and complete with spaces:
set expandtab

" reproduce the indentation of the previous line:
set autoindent
" keep indentation produced by 'autoindent' if leaving the line blank:
"set cpoptions+=I
" try to be smart (increase the indenting level after ‘{’,
" decrease it after ‘}’, and so on):
set smartindent
" a stricter alternative which works better for the C language:
"set cindent
" use language‐specific plugins for indenting (better):
filetype plugin indent on
" ************************

" ******* LightLine *******
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
" ************************

" ******* NerdTree *******
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
" Show hidden files/directories
let g:NERDTreeShowHidden = 1
" Remove bookmarks and help text from NERDTree
" let g:NERDTreeMinimalUI = 1"
" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]','\.idea$[[dir]]', '\.sass-cache$', '^node_modules$']
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
" ************************
