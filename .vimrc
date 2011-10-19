" Thanks to rtomayko, holman and ryanb for sharing their vimrc files:
" https://github.com/rtomayko/dotfiles/blob/rtomayko/.vimrc
" https://github.com/holman/dotfiles/blob/master/vim/vimrc.symlink
" https://github.com/ryanb/dotfiles/blob/master/vimrc

" selectively disable plugins
let g:pathogen_disabled = []

call add(g:pathogen_disabled, 'delimitMate')

" for some reason the csscolor plugin is very slow when run on the terminal
" but not in GVim, so disable it if no GUI is running
if !has('gui_running')
	call add(g:pathogen_disabled, 'csscolor')
endif
" Gundo requires at least vim 7.3
if v:version < '703' || !has('python')
	call add(g:pathogen_disabled, 'gundo')
endif

call pathogen#infect() " tim pope is kickass
call pathogen#helptags()

filetype plugin indent on

let mapleader=";"

set nocompatible

set nobackup " don't make a backup file
set noswapfile " don't keep a swap file
set nowritebackup " don't keep a backup file

au BufRead,BufNewFile *.html		set filetype=html.javascript.jquery

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
set scrolloff=5 " keep 5 lines visible around cursor

" simple escape from insert mode
inoremap jj <ESC>

" insert lorem ipsum
nmap <F5> :Loremipsum<CR>

" simpler macros (using numbers)
nmap ` @

" for macosx, open current file with default
nmap <leader>o :!open %<CR>

" it's taking forever to load files, make toggle for syntax
nmap <leader>s :if exists("g:syntax_on") <Bar>
	\   syntax off <Bar>
	\ else <Bar>
	\   syntax enable <Bar>
	\ endif <CR>

" quick show hidden characters toggle
nmap \l :set list!<CR>

" quick wrap toggle
nmap \w :set wrap!<CR>

" quick wrap toggle
nmap \h :set nohls!<CR>


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
" nmap <C-Tab> :tabnext<cr>
" imap <C-Tab> <C-o>:tabnext<cr>
" vmap <C-Tab> <C-o>:tabnext<cr>
" nmap <C-S-Tab> :tabprevious<cr>
" imap <C-S-Tab> <C-o>:tabprevious<cr>
" vmap <C-S-Tab> <C-o>:tabprevious<cr>

nmap <leader>s :source ~/.vimrc<CR>
nmap <leader>e :edit ~/.vimrc<CR>

" switch buffer/tab/window manipulation & selection
" to be <leader><F#> instead?
" buffer manipulation & selection
nmap <leader>bn :bn<CR>	"next
nmap <leader>bp :bp<CR>	"prev
nmap <leader>bd :bd<CR>	"delete
nmap <leader>ba :badd
					"add (needs arg)

" tab manipulation & selection
nmap <leader>tn :tabnext<CR>	" tab right
nmap <leader>tp :tabprev<CR>	" tab left
nmap <leader>tc :tabclose<CR>	" close tab
nmap <leader>ta :tabnew<CR>	" add tab
nmap <leader>tm :tabmove<CR>	" move tab far right

" window manipulation & selection
nmap <C-h> <C-w>h		" window select left
nmap <C-j> <C-w>j		" window select down
nmap <C-k> <C-w>k		" window select up
nmap <C-l> <C-w>l		" window select right
nmap <leader>wm <C-w>T			" window move to next tab
nmap <leader>ws :split<CR>		" window horizontal split
nmap <leader>wv :vsplit<CR>	" window vertical split
nmap <leader><F4> :clo<cr> " window close

