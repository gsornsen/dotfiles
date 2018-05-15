" Specify a directory for plugins
" ~/.config/nvim/plugs
call plug#begin('~/.config/nvim/plugs')

" Gruvbox Theme
Plug 'morhetz/gruvbox'

" Hyperstyle -- emmet-like
Plug 'rstacruz/vim-hyperstyle'

" SimplyFold
Plug 'tmhedberg/SimpylFold'

" Python indent
Plug 'vim-scripts/indentpython.vim'

" AutoComplete - IDE-like
Plug 'Valloric/YouCompleteMe'

" Syntax Checking/Highlighting
Plug 'vim-syntastic/syntastic'

" PEP8 Checking
Plug 'nvie/vim-flake8'

" Nerd-Tree File Browser
Plug 'scrooloose/nerdtree'

" Git Integration
Plug 'tpope/vim-fugitive'

" Airline - bottom status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tmuxline in nvim
Plug 'edkolev/tmuxline.vim'

" Initialize plugin system
call plug#end()

" Set the colorscheme
" colorscheme gruvbox
set background=dark

" Python Locations
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Enable 256 colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=0

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Show docstring for folded code
let g:SimpylFold_doctstring_preview=1

" PEP8 Python indentation
au FileType python 
	\ set tabstop=4 
	\| set softtabstop=4 
	\| set shiftwidth=4
	\| set textwidth=79
	\| set expandtab
	\| set autoindent
	\| set fileformat=unix

" Front-end Indents
au BufNewFile,BufRead *.js, *.html, *.css, *.qss 
	\ set tabstop=2
	\| set softtabstop=2 
	\| set shiftwidth=2

" Set encoding to UTF8
set encoding=utf-8

" YouCompleteMe Config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Turn on python syntax highlighting
let python_highlight_all=1
syntax on

" Turn on line numbers
set nu

" Start NERDTree automatically
" autocmd vimenter * NERDTree

" air-line config
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
