
function! Cond(cond, ...)
	let opts = get(a:000, 0, {})
	return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()
" ============================
" nerdtree file explorer
" 文件浏览器
Plug 'scrooloose/nerdtree', Cond( !exists('g:vscode'), { 'on': 'NERDTreeToggle' })
Plug 'Xuyuanp/nerdtree-git-plugin', Cond( !exists('g:vscode'), { 'on': 'NERDTreeToggle' })
"Can use many icons with plugin like nerdtree
Plug 'ryanoasis/vim-devicons', Cond( !exists('g:vscode'), { 'on': 'NERDTreeToggle' })

" ============================
" display git status on buffer
" 在文件行号上显示git状态
Plug 'airblade/vim-gitgutter', Cond(!exists('g:vscode'))

" ============================
" commenter
" 快速注释
Plug 'tpope/vim-commentary', Cond(!exists('g:vscode'))
" Plug 'tyru/caw.vim', Cond(!exists('g:vscode'))

" ============================
" rainbow Parentheses
" 彩虹括号匹配
Plug 'luochen1990/rainbow', Cond(!exists('g:vscode'))

" ============================
" status line
" 状态栏
Plug 'vim-airline/vim-airline', Cond(!exists('g:vscode'))
Plug 'vim-airline/vim-airline-themes', Cond(!exists('g:vscode'))

" ============================
" 行尾空格
" :StripWhitespace 去除行尾空格
Plug 'ntpeters/vim-better-whitespace', Cond(!exists('g:vscode'))

" ============================
" Surrounds
" 使用匹配符号包围一段文本
" 新增：ys+[e|iw|...]+["|(]
" 修改：cs+[from]+[to]
" 删除：ds+[from]
Plug 'tpope/vim-surround'

" ============================
" Enable . for vim-surround
" 更牛逼的repeat操作
Plug 'tpope/vim-repeat'

" ============================
" auto close () []
" 括号匹配
Plug 'jiangmiao/auto-pairs', Cond(!exists('g:vscode'))
"  Plug 'Raimondi/delimitMate', Cond(!exists('g:vscode'))
" Plug 'windwp/nvim-autopairs'

" ============================
" quick locate file or function
" 文件搜索
" use coc-list instead
" Plug 'ctrlpvim/ctrlp.vim', Cond(!exists('g:vscode'))


" ============================
" use normal easymotion when in VIM mode
Plug 'easymotion/vim-easymotion'
"  Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
" use VSCode easymotion when in VSCode mode
"  Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })

" align
" Plug 'junegunn/vim-easy-align'

" Plug 'plasticboy/vim-markdown', Cond(!exists('g:vscode'), {'for': 'md'})

" ============================
" Coc system
" Plug 'neoclide/coc.nvim', Cond( !exists('g:vscode'), {'branch': 'release', 'do': { -> coc#util#install()}} )
Plug 'neoclide/coc.nvim', Cond( !exists('g:vscode'), {'branch': 'release'} )
" Plug 'neoclide/coc-tabnine', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'fannheyward/coc-rust-analyzer', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'josa42/coc-go', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'neoclide/coc-json', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'clangd/coc-clangd', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'neoclide/coc-snippets', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'neoclide/coc-yaml', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'iamcco/coc-vimlsp', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'fannheyward/coc-markdownlint', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'fannheyward/coc-ecdict', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )
" Plug 'neoclide/coc-lists', Cond( !exists('g:vscode'), {'do': 'yarn install --frozen-lockfile'} )

Plug 'rust-lang/rust.vim'
Plug 'pboettch/vim-cmake-syntax'
Plug 'chr4/nginx.vim' " nginx conf highlight

" Plug 'elzr/vim-json', Cond(!exists('g:vscode'),  {'for': 'json'})
"
" auto change input method
" Plug 'rlue/vim-barbaric'


" ============================
" colorscheme
" Plug 'tomasr/molokai'
" Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'sainnhe/edge'
Plug 'sainnhe/archived-colors'

" transparent backgroud
" Plug 'tribela/vim-transparent'

" display code as auto folder, very cool
" Plug 'wellle/context.vim'

" code snippets
Plug 'honza/vim-snippets'


" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" ============================
" make column seq number
Plug 'vim-scripts/VisIncr'

" ============================
" float terminal
Plug 'voldikss/vim-floaterm', Cond(!exists('g:vscode'))

" Plug 'Konfekt/FastFold', Cond(!exists('g:vscode'))

call plug#end()
