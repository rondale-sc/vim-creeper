" Refresh Ctags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <Leader>rtt :TagbarToggle<CR><CR>

" Set NERDTreeToggle to leader p
map <Leader>p :NERDTreeToggle<CR><CR>

" Twitvim setup
source ~/.vim/.twitter_user_and_password.vim
nnoremap <F8> :FriendsTwitter<cr>
nnoremap <S-F8> :UserTwitter<cr>
