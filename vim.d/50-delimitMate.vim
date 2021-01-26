let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1
let delimitMate_expand_inside_quotes = 1
let delimitMate_jump_expansion = 0
let delimitMate_balance_matchpairs = 1

" delimiteMate can only use single charactor as matchpairs, so 'begin' 'end'
" can not be used as match pairs
au FileType rust let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
" au FileType rust let b:delimitMate_insert_eol_marker = 2
" au FileType rust let b:delimitMate_eol_marker = ";"

au FileType markdown let b:delimitMate_nesting_quotes = ['`']
