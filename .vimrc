set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required

let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_contrast_dark = 'soft'
let g:solarized_termcolors=256
syntax enable
set background=dark    " Setting dark mode
"set background=light   " Setting light mode
autocmd vimenter * ++nested colorscheme gruvbox     " Setting gruvbox theme
"autocmd vimenter * ++nested colorscheme solarized  " Setting solarized theme

"Transparent background
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
autocmd vimenter * hi NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_si = "\<esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_ei = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
filetype plugin indent on

"Information on the following setting can be found with
":help set
set tabstop=4
set expandtab
set autoindent
set shiftwidth=4  "this is the level of autoindent, adjust to taste
set ruler
set number
set backspace=indent,eol,start
set visualbell
"Below configs are from 'Daniel Miessler's VIM Guide'
inoremap jk <ESC>
let mapleader = "'"
set noswapfile
set hlsearch
set ignorecase
set incsearch
" Uncomment below to make screen not flash on error
" set vb t_vb=""
command Pretty %!jq .
command T NERDTree

set path=+**
set wildmenu
