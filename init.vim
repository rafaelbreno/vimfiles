"Installing Plugins
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-fugitive'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

call plug#end()

"theme
if (has('termiguicolors'))
	set termguicolors
endif

let g:material_theme_style = 'ocean'
colorscheme material

let NERDTreeShowHidden=1
autocmd vimenter * NERDTree


set number relativenumber
set nowrap


:set tabstop=4
:set shiftwidth=4
:set expandtab

"Move Line Up/Down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


