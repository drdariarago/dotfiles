syntax on
set number
set nocompatible
set wildmenu
set encoding=utf-8
filetype plugin indent on
set shell=sh
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')

Plug 'snakemake/snakemake', {'rtp': 'misc/vim'}

"{{ Configuring NerdTree

Plug 'preservim/nerdtree'

map <C-e> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"{{ Git integration

  " ---> git commands within vim <---
Plug 'tpope/vim-fugitive'

" ---> git changes on the gutter <---
Plug 'airblade/vim-gitgutter'

" ---> nerdtree git changes <---
Plug 'Xuyuanp/nerdtree-git-plugin'
"}}

"{{ Color-schemes
Plug 'https://github.com/nanotech/jellybeans.vim'
Plug 'https://github.com/sainnhe/everforest'

"}}

" ---> closing braces and brackets <---
Plug 'jiangmiao/auto-pairs'

"}}

"{{ TMux - Vim integration
Plug 'christoomey/vim-tmux-navigator'
"}}

"{{ colorful status line
Plug 'itchyny/lightline.vim'
"}}

call plug#end()

set laststatus=2
set noshowmode

colorscheme jellybeans

set mouse=a

