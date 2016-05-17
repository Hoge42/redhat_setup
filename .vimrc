"----- Basic -----
set wildmenu
set wildmode=longest:full,full
set nobackup

"----- Search -----
set incsearch
set ignorecase
set smartcase
set wrapscan

"----- Format -----
set smartindent
set autoindent
set formatoptions-=c
set showmatch
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"----- Look&Feel -----
set hlsearch
set ruler
set number
syntax on
filetype plugin on
filetype indent on

"---- Key -----
nmap <ESC><ESC> :noh<CR>
nmap <F2> :syntax on<CR>
nmap <F3> :syntax off<CR>
nmap <F4> :!find ./ -type f -print \| xargs grep 
nmap <F5> :set ts=8 sw=4 sts=4<CR>
nmap <F6> :set expandtab<CR>

"----- netrw.vim -----
" newtrwは常にtree view
let g:netrw_liststyle = 3
" v|o でファイルを開くときは右|下
let g:netrw_altv = 1
let g:netrw_alto = 1

"----- Python -----
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
