set noswapfile
set nobackup
set mouse=r
set guicursor=

"" Tabs. May be overridden by autocmd rules
set tabstop=4 softtabstop=0
set shiftwidth=4
set expandtab
set hidden
"" Search
set nohlsearch
set incsearch
set ignorecase
set smartcase
set noerrorbells

set fileformats=unix,dos,mac

set autoread
set lazyredraw
set updatetime=100

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
set number
set wrap!
let no_buffers_menu=1

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10
"" Disable blinking cursor
set gcr=

set scrolloff=5

"" Status Bar
set laststatus=2

set title
set titlestring=%F

set autoread
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
