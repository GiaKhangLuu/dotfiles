let vim_config_dir = '~/.vim/'

"""""""""""""""""""""""""""""""""""""""""
" VimPlug for managing Plugins
"""""""""""""""""""""""""""""""""""""""""

call plug#begin(vim_config_dir.'plugged')

" Theme 
    Plug 'sonph/onehalf', { 'rtp': 'vim' }

" File browser
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'PhilRunninger/nerdtree-buffer-ops'

" Status bar
    Plug 'itchyny/lightline.vim'

" Multi select
    Plug 'terryma/vim-multiple-cursors'

" File search 
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 			
    Plug 'junegunn/fzf.vim'

" Autocomplete, ...
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs' 						

" Floaterm
"    Plug 'voldikss/vim-floaterm'

" Source code version control 
  	Plug 'tpope/vim-fugitive'    

call plug#end()


"""""""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""""""

" Bật highlight cú pháp cho một loại file (như .py, .cpp, .xml)
syntax enable
syntax on

set laststatus=2  " Always display the status line

" Make it obvious where 80 characters is
"set textwidth=80
"set colorcolumn=+1

" Numbers
"set relativenumber
set number
set numberwidth=5

" Chỉnh 4 space mỗi tab
set tabstop=4

" Chỉnh 4 space mỗi indent
set shiftwidth=4

" Sử dụng space character thay tab character khi nhấn Tab
set expandtab

" Tự động indent khi xuống hàng
set autoindent

" Add indentation guides/lines
set listchars=tab:\|\ 
set list

" Sử dụng clipboard hệ thống thay buffer của vim
set clipboard=unnamedplus
    
" Highlight dòng hiện tại
set cursorline

set mouse=n



"""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Important!!
if has('termguicolors')
    set termguicolors
endif

" Configuration
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='simple'


"""""""""""""""""""""""""""""""""""""
" Other plugin's settings
"""""""""""""""""""""""""""""""""""""

let vim_setting_dir = vim_config_dir.'setting/'

execute 'source '.vim_setting_dir.'nerdtree.vim'
execute 'source '.vim_setting_dir.'coc.vim'
execute 'source '.vim_setting_dir.'floaterm.vim'


"""""""""""""""""""""""""""""""""""""
" Key mappings
"""""""""""""""""""""""""""""""""""""

" Prevent using arrow keys
noremap <Left> :echo 'Use h'<CR>
noremap <Right> :echo 'Use l'<CR>
noremap <Up> :echo 'Use k'<CR>
noremap <Down> :echo 'Use j'<CR>

noremap <Leader>v :vsplit<CR>
noremap <Leader>h :split<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

nnoremap <leader>q :q! <CR>
nnoremap <leader>w :w! <CR>

" Copy and paste
noremap  y "*y
noremap  Y "*Y
noremap  p "*p
noremap  P "*P
vnoremap y "*y
vnoremap Y "*Y
vnoremap p "*p
vnoremap P "*P

" Remove highlight
map <C-h> :nohl<CR>

""""""""""""""""""""""""""""""""
" Config airline_
""""""""""""""""""""""""""""""""

"let g:airline#extensions#tabline#formatter = 'unique_tail'

set guifont = "~/.local/share/fonts/"

let g:coc_disable_startup_warning = 1

""""""""""""""""""""""""""""""""
" Config lightline
""""""""""""""""""""""""""""""""

set noshowmode

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'gitbranch' ] ],
      \   'right': [[ 'lineinfo' ], 
      \              [ 'percent' ],
      \              [ 'fileformat', 'filetype' ]]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
