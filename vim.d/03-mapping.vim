
" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

" y$ -> Y Make Y behave like other capitals
nnoremap Y y$

" Go to home and end using capitalized directions
nnoremap H ^
nnoremap L $

" Map ; to : and save a million keystrokes 用于快速进入命令行
nnoremap ; :

" exchange " and ', fast paste register
nnoremap ' "

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" quickfix window  s/v to open in split window,  ,gd/,jd => quickfix window => open it
autocmd BufReadPost quickfix nnoremap <buffer> v <C-w><Enter><C-w>L
autocmd BufReadPost quickfix nnoremap <buffer> s <C-w><Enter><C-w>K

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" map <space> /
" 进入搜索Use sane regexes"
nnoremap / /\v
vnoremap / /\v

" Keep search pattern at the center of the screen.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

" switch # *
nnoremap # *
nnoremap * #

" 分屏窗口移动, Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 切换前后buffer
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>
" 使用方向键切换buffer
noremap <left> :bp<CR>
noremap <right> :bn<CR>


"  " tab 操作
"  " http://vim.wikia.com/wiki/Alternative_tab_navigation
"  " http://stackoverflow.com/questions/2005214/switching-to-a-particular-tab-in-vim

"  " tab切换
"  map <leader>th :tabfirst<cr>
"  map <leader>tl :tablast<cr>

"  map <leader>tj :tabnext<cr>
"  map <leader>tk :tabprev<cr>
"  map <leader>tn :tabnext<cr>
"  map <leader>tp :tabprev<cr>

"  map <leader>te :tabedit<cr>
"  map <leader>td :tabclose<cr>
"  map <leader>tm :tabm<cr>

"  " normal模式下切换到确切的tab
"  noremap <leader>1 1gt
"  noremap <leader>2 2gt
"  noremap <leader>3 3gt
"  noremap <leader>4 4gt
"  noremap <leader>5 5gt
"  noremap <leader>6 6gt
"  noremap <leader>7 7gt
"  noremap <leader>8 8gt
"  noremap <leader>9 9gt
"  noremap <leader>0 :tablast<cr>

"  " Toggles between the active and last active tab "
"  " The first tab is always 1 "
"  let g:last_active_tab = 1
"  " nnoremap <leader>gt :execute 'tabnext ' . g:last_active_tab<cr>
"  " nnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
"  " vnoremap <silent> <c-o> :execute 'tabnext ' . g:last_active_tab<cr>
"  nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<cr>
"  autocmd TabLeave * let g:last_active_tab = tabpagenr()

"  " 新建tab  Ctrl+t
"  nnoremap <C-t>     :tabnew<CR>
"  inoremap <C-t>     <Esc>:tabnew<CR>

" 复制选中区到系统剪切板中
vmap <leader>y "+y
" this line will cause visual block paste fail
" set clipboard^=unnamedplus

" Quickly close the current window
nmap <leader>q :q<CR>

" Quickly save the current file
nmap <leader>w :w<CR>
