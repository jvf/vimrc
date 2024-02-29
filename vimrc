" ------------------------------
" GENERAL CONFIGURATION OPTIONS
" ------------------------------

set nocompatible        " Use Vim settings, rather than Vi settings
set softtabstop=2       " Indent by 2 spaces when hitting tab
set shiftwidth=4        " Indent by 4 spaces when auto-indenting
set tabstop=4           " Show existing tab with 4 spaces width
set expandtab           " Expand TABs to spaces
syntax on               " Enable syntax highlighting
filetype plugin indent on " Enable indenting for files
set autoindent          " Enable auto indenting
set number              " Enable line numbers
set nobackup            " Disable backup files
set laststatus=2        " show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set wildmenu            " Display command line's tab complete options as a menu
set mouse=a             " Enable mouse for scrolling and resizing
set scrolloff=3         " number of screen lines to keep above and below the cursor
set sidescrolloff=5     " number of screen columns to keep to the left and right of the cursor
set backspace=indent,eol,start " allow deleting indentation, eol and over the start of the insertion
set history=10000      " set history to 10,000 (maximum value)

" ------------------------------
" USER INTERFACE OPTIONS
" ------------------------------

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

" configure cursorline
set cursorline
highlight CursorLineNr cterm=none " disable unterlining of the currently active line number (we use a different color instead with smyck)

" configure searching
set incsearch  " Find the next match as we type the search.
set hlsearch   " Highlight searches by default.

" configure textwidth for wrapping
set textwidth=110

" Move visual block
vnoremap J :m '>+1<CR>gv
vnoremap K :m '<-2<CR>gv

" ------------------------------
" gruvbox Colorscheme
" ------------------------------

autocmd vimenter * ++nested colorscheme gruvbox

set background=light   " Setting light mode
"set background=dark    " Setting dark mode

let g:gruvbox_contrast_light = '(hard)' " vaules: soft, medium, hard, default: medium
let g:gruvbox_contrast_dark = '(hard)' " vaules: soft, medium, hard, default: medium

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux
" If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
" This whole snipped is from https://github.com/morhetz/gruvbox/wiki/Terminal-specific#0-recommended-neovimvim-true-color-support
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
