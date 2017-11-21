syntax on
colorscheme monokai-chris
set encoding=utf8

" Fix Python Path (for YCM)
let g:ycm_path_to_python_interpreter="/usr/bin/python2.7"

" Enable file type detection
filetype on
filetype plugin on

" Display line numbers
set number

" Set tabs
set noexpandtab
set tabstop=4
set shiftwidth=4
retab

" Hightlight current line
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

" Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" For indention markers
set list lcs=tab:\│\
let g:indentLine_setColors = 0

" Pathogen
execute pathogen#infect()

" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Keymapping Ctrl+n to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Toggle NERDTree for current directory
nmap ,n :NERDTreeFind<CR>

" Close vim if NERDTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"italic comments
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic

"make del and backspace work properly
set nocompatible
set backspace=2

" Remap Leader
let mapleader=","

" ##### NERDCOMMENTER
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" JSX highlighting in js files
let g:jsx_ext_required = 0

" ##### UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
call pathogen#helptags()

" Mapping .less to .css , lessc is required
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

" ##### TAGBAR
nmap <F8> :TagbarToggle<CR>

" ##### vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='luna'
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Devicons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" Startify settings
let g:startify_padding_left = 15
let g:startify_custom_header = [
    \ '          /^\    /^\                                                             ',
    \ '         {  O}  {  O}                                                            ',
    \ '          \ /    \ /                                                             ',
    \ '          //     //       _------_                                               ',
    \ '         //     //     ./~        ~-_                                            ',
    \ '        / ~----~/     /              \                                           ',
    \ '      /         :   ./       _---_    ~-                                         ',
    \ '     |  \________) :       /~     ~\   |                                         ',
    \ '     |        /    |      |  :~~\  |   |                                         ',
    \ '     |       |     |      |  \___-~    |                                         ',
    \ '     |        \ __/`^\______\.        ./                                         ',
    \ '      \                     ~-______-~\.                                         ',
    \ '      .|                                ~-_                                      ',
    \ '     /_____________________________________~~____________________________________',
    \ ]
