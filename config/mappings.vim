" No arrows for you! 
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" " (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

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

cnoremap %% <C-R>=expand('%:h').'/'<cr>

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

" Let's you easily toggle between buffers
nnoremap <leader><leader> <c-^>
