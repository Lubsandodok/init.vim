set shell=/bin/fish
filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/syntastic'

Plug 'nvie/vim-flake8'

Plug 'vim-scripts/indentpython.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'Valloric/YouCompleteMe'

Plug 'zchee/deoplete-jedi'

Plug 'jistr/vim-nerdtree-tabs'

Plug 'morhetz/gruvbox'

Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-gitgutter'

call plug#end()

filetype plugin indent on
syntax on
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set showmatch
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set splitright
set clipboard=unnamed
set laststatus=2
set termguicolors
set background=dark
set relativenumber

let g:gruvbox_italic=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let NERDTreeIgnore = ['\.pyc$']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_javascript_checkers = ["jshint"]

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ycm_python_binary_path = 'python3'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_key_invoke_completion = '<C-X>'
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 2

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

let mapleader=","

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>b :ls<CR>:b<Space>

colorscheme gruvbox

