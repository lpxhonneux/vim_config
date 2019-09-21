" Pick a leader key
let mapleader = "  "

" Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=99
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=4
set backspace=indent,eol,start

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" This is an alternative to <Esc>, which is very
" far away
inoremap jk <Esc>
inoremap JK <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>
inoremap kj <Esc>
inoremap Kj <Esc>
inoremap kJ <Esc>
inoremap KJ <Esc>

" Write is a common action. Make it
" nice and quick
nnoremap <leader>w :w<CR>
" These are for quick copy/paste to system clipboard
nnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>p "+gp
nnoremap <leader>P "+gP

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" This toggles between using relative numbers and
" absolute numbering systems
function ToggleRelativeNumbers()
	if (&relativenumber == 1)
		set norelativenumber
	else
		set relativenumber
	endif
endfunction

" This maps gl to toggle the line numberings from relative to
" Absolute
nnoremap gl :call ToggleRelativeNumbers()<CR>

" Set number means that the focused line has the actual line number
set number
" And this sets there to be line numbers
set relativenumber

" Color scheme (terminal)
set background=dark

" set colorscheme

" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" This is to make sure VIM is always centered on the current
" directory rather than the home directory
set autochdir
