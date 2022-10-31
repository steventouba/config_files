" SETTINGS ---------------------------

" Disable compatibility with vi 
set nocompatible

" Set colorscheme 
colorscheme desert

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode on the last line
set showmode

" Enable auto complete after tab
set wildmenu

" Make wildmenu behave like bash completion
set wildmode=longest:full,full

" Turn syntax highlighting on
if has ('syntax')
    syntax on 
endif 

" Set hybrid line numbers
set number relativenumber
set nu rnu

" Set the commands to save in history 
set history=1000

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Set autoindent 
set autoindent 

" Set shiftwidth to 4 spaces
set shiftwidth=4

" Expand tabs to spaces
set expandtab
set tabstop=4

" Stop certain movements from always going to the first character of a line.
set nostartofline

" Display the cursor postion on the last line of the screen or in the status
" line of a window
set ruler

" Set line width ruler
set colorcolumn=101


" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue
set confirm

" Use visual bell instead of beeps when doing something wrong
set visualbell

" Enable use of the mouse for all modes
if has('mouse')
    set mouse=a
endif

" Set the command window height to 2 lines
set cmdheight=2

" Do not wrap lines.
set nowrap

" PLUGINS ---------------------------

" Enable type file detection
if has('filetype')
    filetype on 
endif

" Enable plugins and load plugin for the deteced file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" SEARCH -----------------------------

" Show matching words during a search
set showmode

" Use highlighting when doing a search
set hlsearch 

" Set incremental search highlighting
set incsearch

" Ignore case during searching
set ignorecase

" Overide the ignorecase option if searching for capital letters
set smartcase

" MAPPINGS -----------------------------------------

" Map normal mode to 'jj'
inoremap jj <esc>

" Map leader to space 
nnoremap <Space> <Nop>
let mapleader="\<Space>"

" Insert line break in normal mode
nnoremap <silent> <Leader>o :<C-u>call append(line("."), repeat([""], v:count1))<CR>
nnoremap <silent> <Leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
" Map 'Y' to yank until EOL rather than act as yy
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

