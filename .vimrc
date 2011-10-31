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

set nobackup      " don't make a backup file
set noswapfile    " don't keep a swap file
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
set nohlsearch                 " default to no searched text highlighting
set incsearch                  " default to incremental search
set nowrap                     " default to no text wrapping
set wildmenu                   " insane tab complete menu
set wildmode=list:longest,full " insane tab complete menu settings
set showmatch                  " show matching braces and parens
set matchtime=3                " show matching braces and parens for a short time
set scrolloff=5                " keep 5 lines visible around cursor

" simple escape from insert mode
inoremap jj <ESC>
inoremap kk <ESC>

" insert lorem ipsum
nmap <F5> :Loremipsum<CR>

" simpler macros (using numbers)
" nmap ` @


" for macosx, open current file with default
nmap <leader>o :!open %<CR>

" make it easy to tabularize
nmap <leader>t :Tabularize<CR>

" it's taking forever to load files, make toggle for syntax
nmap \s :if exists("g:syntax_on") <Bar>
	\   syntax off <Bar>
	\ else <Bar>
	\   syntax enable<Bar>
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
nmap <leader>s :source ~/.vimrc<CR>
nmap <leader>e :edit ~/.vimrc<CR>

" switch buffer/tab/window manipulation & selection
" to be <leader><F#>[do][end] instead?
"
" buffer manipulation & selection
" shift-tab buffer next
nmap <ESC>[Z :bn<cr>
" buffer delete
nmap <leader>bd :bd<CR>

" "next
" nmap <leader>bn :bn<CR>
" "prev
" nmap <leader>bp :bp<CR>
" "delete
" "add (needs arg)
" nmap <leader>ba :badd

" tab manipulation & selection

nmap <ESC>OA :tabnew<CR>	" C-UP
nmap <ESC>OC :tabnext<CR>	" C-LEFT
nmap <ESC>OD :tabprev<CR>	" C-LEFT
nmap <ESC>OB :tabclose<CR>	" C-DOWN
" move tab far right
nmap <leader>tm :tabmove<CR>


" window manipulation & selection
" window select left
nmap <C-h> <C-w>h
" window select down
nmap <C-j> <C-w>j
" window select up
nmap <C-k> <C-w>k
" window select right
nmap <C-l> <C-w>l
" window move to next tab
nmap <leader>wm <C-w>T
" window horizontal split
nmap <leader>ws :split<CR>
" window vertical split
nmap <leader>wv :vsplit<CR>
" window close
nmap <leader>wc :clo<cr>

" nmap O 0i<CR><ESC>
" nmap o j0i<CR><ESC>kk

nmap <leader>n :NERDTreeToggle<CR>

" disable the jingle bells
set noeb vb t_vb=
