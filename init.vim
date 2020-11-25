"Installing Plugins
call plug#begin()

" Misc
Plug 'jiangmiao/auto-pairs'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"coc-nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" PHP
Plug 'tpope/vim-dispatch'             "| Optional
Plug 'tpope/vim-projectionist'        "|
Plug 'noahfrederick/vim-composer'     "|
Plug 'noahfrederick/vim-laravel'
Plug 'StanAngeloff/php.vim'

" Nerd
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

" Theme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'fcpg/vim-orbital' " colorscheme orbital
Plug 'ParamagicDev/vim-medic_chalk' " colorscheme medic_chalk
Plug 'tpope/vim-vividchalk'

" DevOps
Plug 'ekalinin/Dockerfile.vim'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


call plug#end()


"theme
if (has('termiguicolors'))
    set termguicolors
endif

"let g:material_theme_style = 'ocean'
colorscheme orbital

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

let mapleader = ","

"NerdTreeToggle
nmap <silent><leader>ne :NERDTree<cr>
nmap <silent><leader>nt :NERDTreeToggle<cr>

"Remove Highlight
nmap <silent><leader>rh :let @/=""<cr>

"GoFmt
nmap <silent><leader><leader>gf :GoFmt<cr>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
