
if !exists('g:vscode')
	map <leader>n :NERDTreeToggle<CR>

	let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
	"close vim if the only window left open is a NERDTree
	" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	" s/v 分屏打开文件
	let g:NERDTreeMapOpenSplit = 's'
	let g:NERDTreeMapOpenVSplit = 'v'
	" fix Nerdtree ^G before folder and file names OSX terminal vim
	let g:NERDTreeNodeDelimiter = "\u00a0"

	let g:NERDTreeDirArrowExpandable = '▸'
	let g:NERDTreeDirArrowCollapsible = '▾'
endif

