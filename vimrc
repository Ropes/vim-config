execute pathogen#infect()
filetype plugin indent on
syntax on

set t_Co=256
set encoding=utf-8
set laststatus=2
let mapleader="\\"

set tabstop=2
set shiftwidth=2
set expandtab

set smartindent
set autoindent
set ruler

" Use Absolute numbers in insert mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
set relativenumber

set ignorecase
set smartcase

inoremap jk <Esc>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

set nobackup
set nowritebackup
set noswapfile

set hlsearch

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_left_sep = '>'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0
let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_inactive_collapse = 1
let g:airline_theme = 'dark'
let g:airline_symbols_branch = '⎇'
let g:airline_section_y = "bo: %o"


"Python
au BufRead,BufNewFile *.py,*.pyw setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"au BufRead,BufNewFile *.py,*.pyw set expandtab 
au FileType python set omnifunc=pythoncomplete#Complete

set completeopt=menuone,longest,preview

"Golang
set tabstop=4
set shiftwidth=4

autocmd FileType go compiler go
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
nmap <F8> :TagbarToggle<CR>
"au FileType go au BufWritePre <buffer> GoImports
"au FileType go au BufWritePre <buffer> GoFmt
"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>i <Plug>(go-info)


let g:UltiSnipsExpandTrigger="<Leader>`"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

colorscheme Tomorrow-Night-Bright
"colorscheme molokai
"colorscheme ironman
