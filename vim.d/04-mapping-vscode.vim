
" =====================================
" up & down
"Treat long lines as break lines (useful when moving around in them)
"se swap之后，同物理行上线直接跳
if !exists("g:vscode")
	nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
	nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
else
	function! MoveCursor(direction) abort
		if(reg_recording() == '' && reg_executing() == '')
			return 'g'.a:direction
		else
			return a:direction
		endif
	endfunction

	nmap <expr> j MoveCursor('j')
	nmap <expr> k MoveCursor('k')
endif

" =====================================
" <CR>
if !exists('g:vscode')
	imap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
	imap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
	" remap for complete to use tab and <cr>
	imap <silent><expr> <TAB>
				\ coc#pum#visible() ? coc#pum#next(1):
				\ CheckBackspace() ? "\<Tab>" :
				\ coc#refresh()
	imap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
	"  inoremap <silent><expr> <c-space> coc#refresh()
	function! CheckBackspace() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	hi CocSearch ctermfg=12 guifg=#18A3FF
	hi CocMenuSel ctermbg=109 guibg=#13354A
else
	imap <silent><expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
endif
