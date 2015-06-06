syntax on
set number
set nobackup
set softtabstop=4
set shiftround
set smarttab
set tabstop=4
set shiftwidth=4
set autoindent
color neonwave

set backspace=2
set wildmenu
set cmdheight=1
set laststatus=2
set ruler
set encoding=utf-8
set wildmenu
set history=0
set nowrap
set smartcase
set smartindent
set listchars=tab:>\
set showmode
set showcmd

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
