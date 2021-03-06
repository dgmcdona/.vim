"--------TERMINAL COLORS-----------"
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
"----------PLUGINS-----------------"
execute pathogen#infect() 

"-----------COLORS-----------------"
colorscheme nightfly 	" Set colorscheme
syntax enable 		" Enable syntax processing

"-----------FILETYPE DETECTION-----"
filetype on
filetype plugin on
filetype indent on

"-----------SPACES AND TABS--------"
set tabstop=4		" Set spaces per tab
set softtabstop=4	" Set space per tab when editing; Deleting a tab now deletes 4 spaces.
set expandtab		" Convert tab into spaces

"-----------UI CONFIG--------------"
set number 		" Show line numbers
set showcmd		" Show command in bottom bar
set cursorline		" Highlight current line
" filetype indent on	" Load filetype specific indent files
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

"---------FILETYPE SPECIFIC RULES-------"
" In makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType java set expandtab tabstop=2 softtabstop=2 noexpandtab shiftwidth=2
