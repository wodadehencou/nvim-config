if 1
	if !exists('g:vscode')
		" vim script use " as comment prefix
		au Filetype vim let b:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'","`":"`", '```':'```', '"""':'"""', "'''":"'''"}
		let g:AutoPairsMultilineClose = 0
	endif
endif
