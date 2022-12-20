syntax enable
set background=dark
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set title                         " Set the terminal's title
set visualbell                    " No beeping.
set tabstop=8                     " Global tab width.
set shiftwidth=4                  " And again, related.
set softtabstop=0
set expandtab                     " Use spaces instead of tabs
set smarttab
set laststatus=2                  " Show the status line all the time
set history=500                   " keep 500 lines of command line history
set autoindent
set tags=./tags;
set encoding=utf-8
set t_Co=256
set splitbelow
set splitright
set nowrap
set showmatch
set backupdir=~/.tmp
set directory=~/.tmp              " Don't clutter my dirs up with swp and tmp files
set list listchars=tab:»·,trail:· " Display extra whitespace
set cursorline                    " highlight current line
set cursorcolumn
highlight CursorColumn ctermfg=7 ctermbg=240 cterm=NONE
set clipboard=unnamed             " use OS clipboard

" Keep focus split large, others minimal
set winwidth=84
set winheight=7
set winminheight=7
set winheight=999



