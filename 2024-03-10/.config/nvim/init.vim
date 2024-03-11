set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'dylanaraps/wal.vim'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons' " this must always be last
call plug#end()

set guifont=JetBrainsMono\ NF\ 10.0
let g:lightline = {
      \ 'component_function': {
      \ 'filetype': 'MyFiletype',
      \ 'fileformat': 'MyFileformat',
      \ },
      \ 'colorscheme': 'wal',
      \ }

" colorscheme gruvbox
colorscheme wal

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction
function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" disable backgrounds, let term handle it
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

" nerdtree autostart
autocmd VimEnter * NERDTree | wincmd p

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" terminal window autostart
autocmd VimEnter * wincmd b | bel split | terminal
autocmd VimEnter * 15 wincmd - | wincmd p

" terminal window autoclose + nerdtree autoclose
" note: this order is important. if the autocmd for NERDTree is placed before
" the terminal one, NERDTree will not close automatically when the editor and
" terminal does. i don't know why, i don't want to know why, i want it to work
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 2 && bufname('%') =~ 'term:\/\/.*' | bwipeout! | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" convenient window navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


