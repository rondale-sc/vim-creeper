runtime bundle/pathogen.vim/autoload/pathogen.vim
call pathogen#infect()

filetype plugin indent on

source ~/.vim/config/basic_setup.vim
source ~/.vim/config/typos.vim
source ~/.vim/config/plugin_customization.vim
source ~/.vim/config/auto_command.vim
source ~/.vim/config/mappings.vim

"###########################################################
"####  This is where user specific configuration goes.  ####
"#### overwrite whatever settings you care to here.     ####
"###########################################################
source ~/.vim/.vimrc.custom

syntax enable

set background=light
colorscheme solarized

" Test space.
nnoremap ; :

