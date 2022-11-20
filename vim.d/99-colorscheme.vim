
" Important!!
if has('termguicolors')
	set termguicolors
endif

" The configuration options should be placed before `colorscheme edge`.
let g:edge_style = 'neon'
let g:edge_enable_italic = 1
" let g:edge_disable_italic_comment = 1

colorscheme edge
" set background=light
" colorscheme ice-age
let g:airline_theme = 'edge'



if exists('g:GuiLoaded')
	" colorscheme molokai
	" colorscheme embark
else
	" colorscheme elflord
endif

" imap <expr> <cr> pumvisible() ? "\<c-y>" : "\<Plug>delimitMateCR"
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
