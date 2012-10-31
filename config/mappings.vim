" No arrows for you! 
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>


" Shortcut to rapidly toggle `set list` (credit vimcasts)
nmap <leader>l :set list!<CR>

" Refresh Ctags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <Leader>rtt :TagbarToggle<CR><CR>

" Set NERDTreeToggle to leader p
map <Leader>p :NERDTreeToggle<CR><CR>

" CtrlP
map <C-b> :CtrlPBuffer<CR>

" Control S to save. 
map  <C-s> <Esc>:w<CR>
imap <C-s> <Esc>:w<CR>

" Display git blame status for lines selected in visual mode
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a> :Tabularize /=><CR>
vmap <Leader>a> :Tabularize /=><CR>

nmap <silent> <leader>s :set spell!<CR>
