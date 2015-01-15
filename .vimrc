syntax on
colorscheme Monokai


" Enable file type detection
filetype on

" Display line numbers
set number

" Set tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Hightlight current line
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" Pathogen
execute pathogen#infect()

" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Remap Leader
let mapleader=","

" Mustache abbreviations
let g:mustache_abbreviations = 1

" Setting commenting for Sass
:let g:NERDCustomDelimiters = {
\ 'scss': { 'left': '// ', 'right': '', 'leftAlt': '', 'rightAlt': '' }
\ }


" #####   NERDTree   #####

" Keymapping Ctrl+n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Toggle NERDTree for current directory
nmap ,n :NERDTreeFind<CR>
