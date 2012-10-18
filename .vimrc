call pathogen#infect()
syntax on
filetype plugin indent on
colorscheme railscasts

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" No arrows for you! 
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" Change vim directory to whatever file I'm editing
set autochdir
" tabs are evil
set expandtab
set shiftwidth=2
set softtabstop=2

" Capitals matter.  That's why they are capitalized!  To differentiate them...
set noignorecase

" set visual bell -- i hate that damned beeping
set vb

" always display laststatus 
set laststatus=2

" Shamelessly pulled from derekwyatt
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

"-----------------------------------------------------------------------------
"" Fix constant spelling mistakes
"-----------------------------------------------------------------------------
"
iab Acheive    Achieve
iab acheive    achieve
iab Alos       Also
iab alos       also
iab Aslo       Also
iab aslo       also
iab Becuase    Because
iab becuase    because
iab Bianries   Binaries
iab bianries   binaries
iab Bianry     Binary
iab bianry     binary
iab Charcter   Character
iab charcter   character
iab Charcters  Characters
iab charcters  characters
iab Exmaple    Example
iab exmaple    example
iab Exmaples   Examples
iab exmaples   examples
iab Fone       Phone
iab fone       phone
iab Lifecycle  Life-cycle
iab lifecycle  life-cycle
iab Lifecycles Life-cycles
iab lifecycles life-cycles
iab Seperate   Separate
iab seperate   separate
iab Seureth    Suereth
iab seureth    suereth
iab Shoudl     Should
iab shoudl     should
iab Taht       That
iab taht       that
iab Teh        The
iab teh        the

set t_Co=256

