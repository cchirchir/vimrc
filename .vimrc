" Use Vim ettings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

execute pathogen#infect()
call pathogen#helptags()

" Colorscheme
colorscheme seti

syntax enable                    " enable syntax processing

" Enable filetype plugins
filetype plugin on
filetype indent on

let mapleader = ","
set title                   "set the title???
set scrolloff=3

" ================== General config ====================

set cursorline                  "highlight current line
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showmode                    "Show current mode down the bottom
set showcmd                     "Show unfinished commands
set hidden                      "Set hidden, put the current buffer to the background.
set lazyredraw                  "good for performance
set autochdir                   "Automatically change directories for every file open in VIM.. very useful setting!!!

" Set to auto read when a file is changed from the outside
set autoread                    "Reload files changed outside vim

runtime macros/matchit.vim      "The % key will switch between opening and closing brackets. By sourcing matchit.vim


" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=list:longest

" Indentation
set smartindent
set shiftwidth=4
set softtabstop=4 " number of spaces in tab when editing
set tabstop=4 " number of visual spaces per TAB
set expandtab " tabs are spaces

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searchin.
set smartcase       " unless we type a capital

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set list listchars=tab:\ \ ,trail:.    "show white spaces

" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" space open/closes folds
nnoremap <space> za

" move vertically by visual line -- won't jump wrapped lines
nnoremap j gj
nnoremap k gk

" jk is escape
inoremap jk <esc>

" open ag.vim     silver searcher .. the beast of all code searchers!!!
nnoremap <leader>a :Ag

" Fast saving
nmap <leader>w :w!<cr>

"Always show current position
set ruler

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" For regular expressions turn magic on
set magic

set laststatus=2 "Status appearing all the time

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

iabbr email charlieckips@gmail.com
