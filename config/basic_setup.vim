let mapleader = ","

" *** Deal with whitespace tabs are evil ***
set expandtab
set shiftwidth=2
set softtabstop=2

" set visual bell -- i hate that damned beeping
set vb

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" always display laststatus 
set laststatus=2
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Shamelessly pulled from derekwyatt
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

set nocompatible " Use vim, no vi defaults
set number       " Show line number
set ruler        " Show line and column number

set encoding=utf-8 " Set encoding default to UTF-8
set history=200    " Store a lot of history! 
set cursorline     " Highlights currently selected line

set scrolloff=3    " Give me some space when I get to the bottom of the document.

set listchars=""       " Reset listchars
set listchars=tab:▸\ ,eol:¬ " Use the same symbols as TextMate for tabstops and EOLs (credit vimcasts)
set listchars+=trail:. " ''

" Gary Bernhardt's split style
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" Set Backspace 
set backspace=2

""
"" Searching
""
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" " Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Prevent word wrapping
set nowrap

" " Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" " Disable temp and backup files
set wildignore+=*.swp,*~,._*

""
"" Backup and swap files
""
set backupdir=~/.vim/_backup//    " where to put backup files.
set directory=~/.vim/_temp//      " where to put swap files.
