runtime bundle/pathogen.vim/autoload/pathogen.vim
call pathogen#infect()

syntax on
filetype plugin indent on

" Sourcing files for better separation, thnx @rjwblue
source ~/.vim/config/basic_setup.vim
source ~/.vim/config/typos.vim
source ~/.vim/config/plugin_customization.vim
source ~/.vim/config/mappings.vim
source ~/.vim/config/auto_command.vim

set background=dark
set t_Co=256
color molokai
