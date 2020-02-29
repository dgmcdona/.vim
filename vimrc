"----------PLUGINS-----------------"
execute pathogen#infect() 

"-----------COLORS-----------------"
colorscheme badwolf 	" Set colorscheme
syntax enable 		" Enable syntax processing

"-----------SPACES AND TABS--------"
set tabstop=4		" Set spaces per tab
set softtabstop=4	" Set space per tab when editing; Deleting a tab now deletes 4 spaces.
set expandtab		" Convert tab into spaces

"-----------UI CONFIG--------------"
set number 		" Show line numbers
set showcmd		" Show command in bottom bar
set cursorline		" Highlight current line
filetype indent on	" Load filetype specific indent files
set wildmenu		" Visual autocomplete for command menu
set lazyredraw		" Redraw only when we need to
set showmatch		" highlight matching [{()}]

"-----------SEARCHING--------------"
set incsearch		" search as characters are entered
set hlsearch		" highlight matches
" Turn off search highlight "
nnoremap <leader><space> :nohlsearch<CR>
set foldenable		" Enable folding
set foldlevelstart=10	" Open most folds by default
set foldnestmax=10	" 10 nested fold max
" Space opens/closes folds
nnoremap <space> za
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
" Highlight last inserted text
nnoremap gV `[v`]

"----------LEADER SHORTCUTS--------"
" Leader is comma
let mapleader =","
" jk is escape
inoremap jk <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
" Edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" Save session
nnoremap <leader>s :mksession<CR>
