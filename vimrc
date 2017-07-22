set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-syntastic/syntastic'

" Syntax Highlight
Plugin 'sheerun/vim-polyglot'
Plugin 'jparise/vim-graphql'
Plugin 'elmcast/elm-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

set expandtab
set hlsearch
set nobackup
set noswapfile
set nowritebackup
set number
set scrolloff=10
set shiftwidth=2
set autoindent
set smartindent
set tabstop=2

syntax enable
syntax sync fromstart
colorscheme monokai

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Ignore images and log files
set wildignore+=*.gif,*.jpg,*.png,*.log

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable OS X index files
set wildignore+=.DS_Store

" Python Indent configuration
let g:pyindent_open_paren = '&sw'
let g:pyindent_continue = '&sw'

" Elm
let g:polyglot_disabled = ['elm']
let g:elm_format_autosave = 1

" Syntastic configuration
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '-'
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checker = ['elixir']
let g:loaded_syntastic_python_pylint_checker = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_mode_map = { 'passive_filetypes': ['vue'] }

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

" puts the caller
nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

" fzf - buffer selection
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> gg :Ggrep
nnoremap <silent> <C-p> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

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
