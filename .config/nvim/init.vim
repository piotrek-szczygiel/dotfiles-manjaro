source $VIMRUNTIME/mswin.vim

call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'editorconfig/editorconfig-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tcomment_vim'
Plug 'vimlab/split-term.vim'
Plug 'Yggdroot/indentLine'

call plug#end()

set termguicolors
colorscheme monokai_pro

set number
set scrolloff=5

set hidden

set shiftwidth=4
set tabstop=4
set expandtab
set shiftround

set ignorecase
set smartcase

set splitbelow
set splitright

set wildmode=longest,list,full

set mouse=a

set colorcolumn=120

let mapleader = " "

nnoremap <silent> <leader>ve :e $MYVIMRC<CR>
nnoremap <silent> <leader>vr :source $MYVIMRC<CR>
nnoremap <silent> <leader><CR> :nohl<CR>

nnoremap <silent> <leader>, :bp<CR>
nnoremap <silent> <leader>. :bn<CR>
nnoremap <silent> <TAB> :b#<CR>

vnoremap < <gv
vnoremap > >gv

vnoremap <silent> <leader>y "+y<CR>
vnoremap <silent> <leader>p "+p<CR>

noremap <silent> <C-\> :vsp<CR>

nnoremap <silent> <leader>' :Term<CR>
