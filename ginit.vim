" To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
" see https://github.com/equalsraf/neovim-qt/issues/219
if exists('g:GuiLoaded')
	" call GuiWindowMaximized(1)
	GuiTabline 1
	" GuiPopupmenu 0
	" GuiLinespace 2
	GuiFont DejaVu Sans Mono:h11
	" GuiFont! Microsoft\ YaHei\ Mono:h10:l
	"
	" enable mouse
	set mouse=a

	" enable right click
	nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
	inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
	vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>

	" Set buffer name as window title
	set title

endif
