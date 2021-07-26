call plug#begin('~/.config/nvim/plugged')
" Track engine
Plug 'SirVer/ultisnips'
" Snippets
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'ajmwagar/vim-deus'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
" Syntax Highlighting
Plug 'storyn26383/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'takac/vim-hardtime' "Hardtime disable basic motion keys
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'frazrepo/vim-rainbow'
Plug 'ryanoasis/vim-devicons' "Add filetype icons in NerdTree
Plug 'vim-scripts/django.vim'
Plug 'yggdroot/indentline'
"Autocomplete using YCM
" Plug 'valloric/youcompleteme', {'do': './install.py'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Wakatime
Plug 'wakatime/vim-wakatime'
call plug#end()

syntax enable "enable syntax highlighting

"Set configurations"
set number
set guioptions-=T
set guioptions-=r
set go-=L
set tabstop=4
set smarttab
set softtabstop=4
set autoindent
set smartindent
set copyindent
set ignorecase
set relativenumber
set showcmd
set lines=36 columns=142 "Set window size of vim"
set listchars=tab:\|\ 
set list
set wildignore=*/node_modules/*
set wildignore+=*/htmlcov/*

"Configurations for no arrow keys"
"Using hardtime

let g:hardtime_default_on=0
let g_list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
"let g_hardtime_showmsg = 1"

"NERDTreeToggle"
nmap <C-n> :NERDTreeToggle<CR>

"Vim Airline Extension Config"
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sept = ' '
let g:airline#extensions#tabline#left_alt_sept='|'
"Color and Themeing"
set t_Co=256
set termguicolors


let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "<\<Esc>[48;2;%lu;%lu;%lum"

set background=dark "Settings for background"
colorscheme gruvbox
"let g:deus_termcolors=256

"windows Splits"
nmap vs : vsplit<cr>
nmap sp : hsplit<cr>

"Fuzzy Search using CtrlP"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Vim Rainbow for location of curly braces and braces
let g:rainbow_active = 1

"Vim Devicons"
set encoding=UTF-8

"Highlight Syntax for Django Templates
set filetype=htmldjango

" Configurations for Emmet
let g:user_emmet_leader_key=','

" Snippets Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
