execute pathogen#infect()
Helptags
set nocompatible      " We're running Vim, not Vi!
set number
set mouse=a
set ttym=xterm2
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=80
"set virtualedit=onemore 
set backspace=2 " make backspace work like most other apps
syntax on             " Enable syntax highlighting
"IndentGuides Stuff
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=DarkGray
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=Black

color onedark
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin indent on    " Enable filetype-specific plugins
"#autocmd VimEnter * NERDTree
map  <C-n> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-t> :TagbarToggle<CR>
map  <C-]> :vert sb 1<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrows=0
let NERDTreeShowBookmarks=1

"indent-line
let g:indentLine_enabled = 0
map <leader>il :IndentLinesToggle<CR>

"vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-u>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"silver_searcher/ ag
let g:ag_working_path_mode="r"
map <C-S-f> :NERDTreeClose<CR>:Ag! 

"search-pulse
let g:vim_search_pulse_duration=30
let g:vim_search_pulse_disable=0

"CTRLP
let g:ctrlp_open_new_file = 'r'

if executable('ag')
   " Note we extract the column as well as the file and line number
   set grepprg=ag\ --nogroup\ --nocolor\ --column
   set grepformat=%f:%l:%c%m
     " Use ag in CtrlP for listing files. Lightning fast and respects
    ".gitignore
   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
   " ag is fast enough that CtrlP doesn't need to cache
   let g:ctrlp_use_caching = 0
   nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
 endif
 if has('mouse_sgr')
   set ttymouse=sgr
 endif
