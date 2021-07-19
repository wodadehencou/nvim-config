func! g:JInPMU()
	if pumvisible()
		return "\<C-n>"
	else
		return "\<c-j>"
	endif
endfunction

func! g:KInPMU()
	if pumvisible()
		return "\<C-p>"
	else
		return "\<c-k>"
	endif
endfunction

inoremap <C-j> <C-r>=g:JInPMU()<cr>
inoremap <C-k> <C-r>=g:KInPMU()<cr>

if !exists('g:vscode')
	let g:coc_global_extensions = ['coc-rust-analyzer', 'coc-go', 'coc-json', 'coc-clangd', 'coc-snippets', 'coc-yaml', 'coc-vimlsp', 'coc-markdownlint', 'coc-lists', 'coc-prettier', 'coc-fish', 'coc-python', 'coc-actions']

	" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
	" delays and poor user experience.
	set updatetime=300
	" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Symbol renaming.
	nmap <leader>rn <Plug>(coc-rename)

	" Use `[g` and `]g` to navigate diagnostics
	" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
	nmap <silent> <leader>cp <Plug>(coc-diagnostic-prev)
	nmap <silent> <leader>cn <Plug>(coc-diagnostic-next)

	" GoTo code navigation.
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Use K to show documentation in preview window.
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
		if (index(['vim','help'], &filetype) >= 0)
			execute 'h '.expand('<cword>')
		elseif (coc#rpc#ready())
			call CocActionAsync('doHover')
		else
			execute '!' . &keywordprg . " " . expand('<cword>')
		endif
	endfunction

	" Remap keys for applying codeAction to the current buffer.
	" nmap <c-.>  <Plug>(coc-codeaction)
	nmap <leader>qf  <Plug>(coc-codeaction-line)
	" Apply AutoFix to problem on the current line.
	" nmap <leader>qf  <Plug>(coc-fix-current)

	" Add `:OR` command for organize imports of the current buffer.
	command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
	autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')


	" Lookup the keyword under cursor with K, and shows translation in preview/floating window if found.
	" nnoremap <silent> <leader>tr :call CocActionAsync('doHover')<CR>

	" Remap <C-f> and <C-b> for scroll float windows/popups.
	" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
	nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
	inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

	" Add (Neo)Vim's native statusline support.
	" NOTE: Please see `:h coc-status` for integrations with external plugins that
	" provide custom statusline: lightline.vim, vim-airline.
	" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

	" Mappings for CoCList
	" Show all diagnostics.
	nnoremap <silent><nowait> <leader>e  :<C-u>CocList diagnostics<cr>
	" Manage extensions.
	" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
	" Show commands.
	" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
	" Find symbol of current document.
	nnoremap <silent><nowait> <leader>o  :<C-u>CocList outline<cr>
	" Search workspace symbols.
	nnoremap <silent><nowait> <leader>s  :<C-u>CocList -I symbols<cr>
	" Do default action for next item.
	" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
	" Resume latest coc list.
	" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
	"
	" replace ctrl p
	nnoremap <silent><nowait> <c-p>  :<C-u>CocList files<cr>
	nnoremap <silent><nowait> <leader>f  :<C-u>CocList mru<cr>

	" Remap for do codeAction of selected region
	" function! s:cocActionsOpenFromSelected(type) abort
	" 	execute 'CocCommand actions.open ' . a:type
	" endfunction
	" xmap <silent> <leader>. :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
	" nmap <silent> <leader>. :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

endif

