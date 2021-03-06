"Installing Plugins
call plug#begin()

" Misc
Plug 'jiangmiao/auto-pairs'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'kdheepak/lazygit.nvim'

""""""Telescope""""""
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"" File finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"" File finder

""""""Telescope""""""
"HTML:

Plug 'alvan/vim-closetag'

"coc-nvim:
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile' }

"PHP:
Plug 'tpope/vim-dispatch'             "| Optional
Plug 'tpope/vim-projectionist'        "|
Plug 'noahfrederick/vim-composer'     "|
Plug 'noahfrederick/vim-laravel'
Plug 'StanAngeloff/php.vim'
Plug 'jwalton512/vim-blade'

"JS:
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

"Reason:
Plug 'reasonml-editor/vim-reason-plus'
Plug 'rescript-lang/vim-rescript'

"Nerd:
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

"Color:
Plug 'morhetz/gruvbox'

"DevOps:
Plug 'ekalinin/Dockerfile.vim'

"Go:
Plug 'fatih/vim-go'

"Protobuf:
Plug 'uarun/vim-protobuf'

"Elixir:

Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

"LanguageClient:
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

call plug#end()

" Leader
let mapleader = ","

"Increases the memory limit from 50 lines to 1000 lines
:set viminfo='100,<1000,s10,h


"theme
if (has('termiguicolors'))
    set termguicolors
endif

"let g:material_theme_style = 'darker-community'
colorscheme gruvbox

"INDENTATION:
"------------
"Highlights code for multiple indents without reselecting
vnoremap < <gv
vnoremap > >gv

let NERDTreeShowHidden=1
autocmd vimenter * NERDTree


set number relativenumber
set nowrap


:set tabstop=4
:set shiftwidth=4
:set expandtab

" COC plugins
let g:coc_global_extensions =  [ 'coc-tslint-plugin', 'coc-tsserver']
let g:coc_global_extensions += [ 'coc-css', 'coc-html', 'coc-json']
let g:coc_global_extensions += [ 'coc-prettier', 'coc-svelte']
let g:coc_global_extensions += [ 'coc-go', 'coc-phpls' ]
let g:coc_global_extensions += [ 'coc-python', 'coc-vetur' ]


"Move Line Up/Down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.blade.php"
autocmd Filetype php setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.blade.php set ft=blade
autocmd FileType php set iskeyword+=$

"Save/Exit
nmap <silent><leader>w :w<cr>
nmap <silent><leader>q :wq<cr>

"NerdTreeToggle
nmap <silent><leader>ne :NERDTree<cr>
nmap <silent><leader>nt :NERDTreeToggle<cr>

"Remove Highlight
nmap <silent><leader>rh :let @/=""<cr>

"GoFmt
nmap <silent><leader>gf :GoFmt<cr>

"GoImports
nmap <silent><leader>gi :GoImports<cr>

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


" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" LazyGit
noremap <silent> <leader>lg :LazyGit<CR>

let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

" Open blank files/windows
"" Horizontally
nnoremap <leader><leader>i <cmd>:new<cr>
"" Vertically
nnoremap <leader><leader>s <cmd>:vnew<cr>

" Reload init.vim file
nnoremap <leader>r <cmd>:source $MYVIMRC<cr>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

"SYNTAX HIGHLIGHTING:
"--------------------
syntax on

"HIGHLIGHTING:
"-------------
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Highlight the current line the cursor is on
set cursorline
