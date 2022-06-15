syntax enable

set relativenumber	
set hidden		" Multiple buggers open
set number
set fileencoding=uts-8
set t_Co=256		" Support for 256 colours
set nowrap
set ruler
set cursorline
set cmdheight=2		" More room for command messsages
set mouse=a		" Use mouse normally
set splitbelow		" Horizontal splits below
set splitright		" Vertical splits right
set smarttab		" Auto-detect tab style
" set autoident
" set tabstop=4
" set shiftwidth=4
set laststatus=2	" Always display status line
" set background=dark	" For syntax
" set guifont=Hack\ Nerd\ Font
" set noshowmode
" set timeoutlen=100
" set incsearch

" Yank Highlight

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=500}
augroup END