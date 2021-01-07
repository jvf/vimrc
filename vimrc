set nocompatible        " Use Vim settings, rather than Vi settings
set softtabstop=2       " Indent by 2 spaces when hitting tab
set shiftwidth=4        " Indent by 4 spaces when auto-indenting
set tabstop=4           " Show existing tab with 4 spaces width
syntax on               " Enable syntax highlighting
filetype plugin indent on " Enable indenting for files
set autoindent          " Enable auto indenting
set number              " Enable line numbers
colorscheme smyck       " Set colorscheme
set nobackup            " Disable backup files
set laststatus=2        " show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set wildmenu            " Display command line's tab complete options as a menu

" configure cursorline
set cursorline
highlight CursorLineNr cterm=none " disable unterlining of the currently active line number (we use a different color instead with smyck)

" remap ctrl-h,j,k,l for faster window movement
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" buffer management (need to be below the window movement mappings ?! )
set hidden              " allow sending unsafed buffers to the background
map <C-J> :bnext<CR>    " ctrl-j to go to next buffer
map <C-K> :bprev<CR>    " ctrl-k to go to prev buffer
