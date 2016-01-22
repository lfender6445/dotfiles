"Vim Settings -----------------------------------------------------------
let mapleader="\<Space>"
set noswapfile
" Enable 256 colorschemes in iTerm
let &t_Co=256

" Set tabs
set expandtab
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set number "required for vim numbers plugin
set paste
set nolist " disable eol characters

let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

set clipboard=unnamed " allow visual copy from vim to clipboardand paste from system
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

au FileChangedShell * echo "Warning: File changed on disk" " Detect file changes

" Watch vimrc for changes and autoload those changes
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" search forwards and backwards with n and N
set incsearch " begin searching as you type
set hlsearch " higlight search lines
" hi CursorLineNR cterm=bold

" Line Highlight settings per style inteded by colorshcheme
augroup CLNRSet
  autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END

set cursorline " set visual indicator for line at cursor level

set list listchars=trail:.,extends:> " highlight unwanted spaces
autocmd BufWritePre * :%s/\s\+$//e " Prevent trailing space on save
call plug#begin('~/.vim/plugged')
let g:plug_url_format = 'git@github.com:%s.git'

Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-ruby/vim-ruby'

" --- syntax
Plug 'scrooloose/syntastic' " check for syntax errors
Plug 'nono/vim-handlebars'
Plug 'slim-template/vim-slim'
Plug 'digitaltoad/vim-jade'
Plug 'kchmck/vim-coffee-script'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let g:NERDTreeWinPos = "right"
" Plugin options
Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }

Plug 'Chiel92/vim-autoformat'
noremap  <F3> :Autoformat<CR><CR>

" Ack -----
nnoremap \ :Ag<SPACE>
nnoremap <Leader>f :Ag<SPACE>
nnoremap \f :Ag<SPACE>-i<SPACE>
" CTRL P---
nnoremap <Leader>o :CtrlP<CR>
" Custom Leader
noremap <Leader>w :w<CR>
noremap <Leader>s :w<CR>
noremap <Leader>q :tabc<CR>
noremap <Leader>z :qa<CR>
noremap <Leader>e :edit!<CR>
noremap <Leader>r :edit!<CR>
noremap <Leader>t :tabnew<CR>:NERDTreeToggle<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
map  <Leader><Left> :wincmd h<CR>
map  <Leader><Right> :wincmd l<CR>
map  <Leader><Up>   :wincmd k<CR>
map  <Leader><Down> :wincmd j<CR>
map  <Leader><Down> :wincmd j<CR>
" Tab Navigation
" nnoremap <Leader>1 1gt

nmap == <C-w>=
" horizontal orientation
nmap <Leader>h <C-w>t<C-w>K :NERDTreeClose<CR>:NERDTree<CR>
" vertical orientation
nmap <Leader>v <C-w>t<C-w>H :NERDTreeClose<CR>:NERDTree<CR>


nmap <Leader>1 1gt
nmap <Leader>2 2gt<CR>
nmap <Leader>3 3gt<CR>
nmap <Leader>4 4gt<CR>
nmap <Leader>5 5gt<CR>
nmap <Leader>6 6gt<CR>
nmap <Leader>7 7gt<CR>
nmap <Leader>8 8gt<CR>
nmap <Leader>9 9gt<CR>


" let g:NERDTreeMapActivateNode="<F3>"
" let g:NERDTreeMapPreview="<F4>"

call plug#end()

" Ctrl P settings -------------------------
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:ctrlp_use_caching = 0

" Visual settings
set nu

" Resources
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/


" Start NERDTree with every vim session plus new tab
autocmd VimEnter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p " Go to previous (last accessed) window.
" Luke Fender - Custom Changes
" Nerd Tree -----
silent! nmap <F1> :NERDTreeToggle<CR>
silent! map  <F2> :NERDTreeFind<CR>
" autocmd VimEnter * NERDTreeClose

let g:pymode_rope_complete_on_dot = 0
:set nolist
