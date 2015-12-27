execute pathogen#infect()
set nocompatible      " We're running Vim, not Vi!
set number
set mouse=a
set ttym=xterm2
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=80
syntax on             " Enable syntax highlighting
color onedark
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin indent on    " Enable filetype-specific plugins
"#autocmd VimEnter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
"map  <C-n> :tabnew<CR>  conflicts with NERDTree toggle
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrows=0
