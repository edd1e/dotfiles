" Thanks to rtomayko, holman and ryanb for sharing their vimrc files:
" https://github.com/rtomayko/dotfiles/blob/rtomayko/.vimrc
" https://github.com/holman/dotfiles/blob/master/vim/vimrc.symlink
" https://github.com/ryanb/dotfiles/blob/master/vimrc

call pathogen#infect() " tim pope is kickass

filetype plugin indent on

syntax on

set nocompatible

set nobackup " don't make a backup file
set noswapfile " don't keep a swap file
set nowritebackup " don't keep a backup file

" syntax enable
" colorscheme solarized
" if has('gui_running')
	" set background=light
" else
	" set background=dark
" endif

" set tabstop=8 softtabstop=4 shiftwidth=4 noexpandtab
" set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set list listchars=tab:»\ ,extends:»,precedes:«,trail:·,eol:¬
set nohlsearch " default to no searched text highlighting
set nowrap " default to no text wrapping
set wildmenu " insane tab complete menu
set wildmode=list:longest,full " insane tab complete menu settings
set showmatch " show matching braces and parens
set scrolloff=3 " keep 3 lines visible around cursor

" simple escape from insert mode
inoremap jj <ESC> 

" quick show hidden characters toggle
nmap <leader>l :set list!<CR>

" quick wrap toggle
nmap <leader>w :set wrap!<CR>

" quick wrap toggle
nmap <leader>h :set nohls!<CR>

" simple window selecting
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" sane movement with wrap turned on (from holman)
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" simple tab selecting
nmap <C-Tab> :tabnext<cr>
imap <C-Tab> <C-o>:tabnext<cr>
vmap <C-Tab> <C-o>:tabnext<cr>
nmap <C-S-Tab> :tabprevious<cr>
imap <C-S-Tab> <C-o>:tabprevious<cr>
vmap <C-S-Tab> <C-o>:tabprevious<cr>
