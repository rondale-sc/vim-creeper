" No arrows for you! 
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" Refresh Ctags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <Leader>rtt :TagbarToggle<CR><CR>

" Set NERDTreeToggle to leader p
map <Leader>p :NERDTreeToggle<CR><CR>

" CtrlP
map <C-b> :CtrlPBuffer<CR>

nnoremap <F8> :FriendsTwitter<cr>
nnoremap <S-F8> :UserTwitter<cr>
