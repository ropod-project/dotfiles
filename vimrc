" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Shorthand notation fetches from;
" https://github.com/davidhalter/jedi-vim
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
call plug#end()

colorscheme onedark

" my mappings
:command! W w
:command! Q q
:command! WQ wq
:command! Wq wq

" mapping Tab and Shift+Tab to move among tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" disable scroll using mouse
set mouse=a
nmap <ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
imap <ScrollWheelUp> <nop>
imap <ScrollWheelDown> <nop>
vmap <ScrollWheelUp> <nop>
vmap <ScrollWheelDown> <nop>

" setting to keep cursor line in middle
set scrolloff=5

" Vim loads indentation and plugins acc. to detected filetype
"filetype plugin indent on
filetype plugin on

" Vim jumps to last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Run current script in python3 with F5
nnoremap <F5> :! python3 %<cr>

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Copy in the clipboard
vnoremap <C-c> "+y
vnoremap <C-v> "+p

" Comment lines or blocks
noremap <silent> <C-_> :Commentary<cr>

" Enable syntax highlighting
syntax enable

" disable auto-commenting when entering new line
autocmd FileType * setlocal formatoptions+=c formatoptions+=r formatoptions-=o

" enter the current millenium
set nocompatible

" wildmenu for fuzzy file finding
set wildmenu

" Show line numbers
set number

" Set tabs width to 4, it is still \t
set tabstop=4
" Set shiftwidth to 0 which makes it equal to tabwidth by default. This is
" needed to use proper indentation
set shiftwidth=0

" Expand tabs into spaces
set expandtab|retab

" Indent when moving to the next line while writing code
set autoindent

" Show the matching part of the pair for [] {} and ()
set showmatch

" setting smart indentation
set smartindent

" set color column
hi ColorColumn ctermbg=darkgrey guibg=lightgrey
set colorcolumn=80
" set textwidth
set textwidth=80
" disable autowrap text when writing in insert mode
set formatoptions-=t
" disable wrapping the lines
set nowrap


" Easier indentation of code blocks
" In visual mode (v), select several lines of code press ``>`` several times.
vnoremap < <gv
vnoremap > >gv

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Hack to make light-line appear...
set laststatus=2

" Get rid of default vim mode
set noshowmode

" Eliminate delay between INSERT and ESCAPE
set timeoutlen=1000 ttimeoutlen=0

" Light-line configuration
 let g:lightline = {
       \ 'colorscheme': 'powerline',
       \ 'active': {
       \   'left': [ [ 'mode', 'paste' ],
       \             [ 'readonly', 'filename', 'modified' ] ],
       \   'right': [ [ 'lineinfo' ],
       \              [ 'percent' ],
       \              [ 'filetype' ] ]
       \ },
       \ }

" netrw file browsing
let g:netrw_banner=0 " hide banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1          "open splits to the right
let g:netrw_liststyle=3     "tree view

