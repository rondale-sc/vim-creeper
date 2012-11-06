" Twitvim setup
source ~/.vim/.twitter_user_and_password.vim

" Fugitive leaders
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :Git push<CR>

" Setup for vim-ruby-minitest
set completefunc=syntaxcomplete#Complete

let g:neocomplcache_enable_at_startup = 1
