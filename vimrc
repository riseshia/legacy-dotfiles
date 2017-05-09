set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/emmet-vim'
Plugin 'bronson/vim-trailing-whitespace'

" Syntax Highlight
Plugin 'sheerun/vim-polyglot'
Plugin 'jparise/vim-graphql'
Plugin 'elmcast/elm-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

set expandtab
set hls
set nobackup
set noswapfile
set nowritebackup
set number
set scrolloff=10
set shiftwidth=2
set autoindent
set tabstop=2

syntax enable
syntax sync fromstart
colorscheme monokai

" Python Indent configuration
let g:pyindent_open_paren = '&sw'
let g:pyindent_continue = '&sw'

" Elm
let g:polyglot_disabled = ['elm']
let g:elm_format_autosave = 1

" Treat *.jb as ruby
au BufRead,BufNewFile *.jb set filetype=ruby

" Disable plugin indent support on ts
let g:typescript_indent_disable = 1

runtime macros/matchit.vim

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" http://mattn.kaoriya.net/software/vim/20150209151638.htm …
if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

" exclude files listed in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
autocmd QuickFixCmdPost *grep* cwindow

" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
