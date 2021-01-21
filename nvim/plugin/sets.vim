""------Basic setup-----
""----------------------
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set mouse=a

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
"" Enable hidden buffers
set hidden
"" Search
set nohlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

set autoread

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax on
set ruler
set number
set wrap!
let no_buffers_menu=1

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10
"" Disable blinking cursor
set gcr=a:blinkon0

set scrolloff=3

"" Status Bar
set laststatus=2

"" modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

set autoread
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif