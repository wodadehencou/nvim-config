set nocompatible

function! Cond(cond, ...)
	let opts = get(a:000, 0, {})
	return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()

"Can use many icons with plugin like nerdtree
Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/nerdtree', Cond( !exists('g:vscode'), { 'on': 'NERDTreeToggle' })
Plug 'Xuyuanp/nerdtree-git-plugin', Cond( !exists('g:vscode'), { 'on': 'NERDTreeToggle' })

Plug 'tpope/vim-commentary', Cond(!exists('g:vscode'))
" Plug 'tyru/caw.vim', Cond(!exists('g:vscode'))
Plug 'luochen1990/rainbow'

Plug 'vim-airline/vim-airline', Cond(!exists('g:vscode'))
Plug 'vim-airline/vim-airline-themes', Cond(!exists('g:vscode'))

" trailingwhitespace
" 快速去行尾空格 [, + <Space>]
Plug 'ntpeters/vim-better-whitespace'

" Surrounds
Plug 'tpope/vim-surround'

" Enable . for vim-surround
Plug 'tpope/vim-repeat'

" auto close () []
" Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate', Cond(!exists('g:vscode'))

" quick locate file or function
" 文件搜索
" use coc-list instead
" Plug 'ctrlpvim/ctrlp.vim', Cond(!exists('g:vscode'))

" display git status on buffer
Plug 'airblade/vim-gitgutter', Cond(!exists('g:vscode'))

" Fast move
Plug 'easymotion/vim-easymotion'

" align
Plug 'junegunn/vim-easy-align'

" Plug 'plasticboy/vim-markdown', Cond(!exists('g:vscode'), {'for': 'md'})

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

" Plug 'elzr/vim-json', Cond(!exists('g:vscode'),  {'for': 'json'})
"
" auto change input method
" Plug 'rlue/vim-barbaric'


" colorscheme
" Plug 'tomasr/molokai'
" Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'sainnhe/edge'
" make terminal colorscheme the same as gui
" Plug 'godlygeek/csapprox'

" display code as auto folder, very cool
" Plug 'wellle/context.vim'

" code snippets
Plug 'honza/vim-snippets'

call plug#end()
