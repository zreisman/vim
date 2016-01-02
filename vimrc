execute pathogen#infect()
Helptags
set nocompatible      " We're running Vim, not Vi!
set number
set relativenumber
set mouse=a
set cursorline
set laststatus=2
set ttym=xterm2
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=80
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
map <space> za

set ic
set backspace=2 " make backspace work like most other apps
syntax on             " Enable syntax highlighting
"IndentGuides Stuff
let g:indent_guides_auto_colors=1


color onedark
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin indent on    " Enable filetype-specific plugins
"#autocmd VimEnter * NERDTree
map  <C-n> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <leader>t :TagbarToggle<CR>
"narrower window
map - <C-W><
"wider window
map + <C-W>>
"shorter window
map _ <C-W>-
"taller window
map = <C-W>+
"map  <C-]> :vert sb 1<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <D-T> <C-P>
set splitbelow
set splitright
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrows=0
let NERDTreeShowBookmarks=1

"indent-line
let g:indentLine_enabled = 0
map <leader>il :IndentLinesToggle<CR>
nnoremap <leader>] <C-W>}
nnoremap <leader>[ <C-W>z
"vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-u>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"silver_searcher/ ag
let g:ag_working_path_mode="r"

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
 
 "tag generation command
 "ctags --tag-relative=yes -R -f .git/tags --languages=ruby,javascript --exclude=.git --exclude=log . $(bundle list --paths)
 "config for ctags
set tags=./tags;,./TAGS;,tags,TAGS
 " Check .git/tags for ctags file.
fun! FindTagsFileInGitDir(file)
  let path = fnamemodify(a:file, ':p:h')
  while path != '/'
    let fname = path . '/.git/tags'
    if filereadable(fname)
      silent! exec 'set tags+=' . fname
    endif
    let path = fnamemodify(path, ':h')
  endwhile
endfun

augroup CtagsGroup
  autocmd!
  autocmd BufRead * call FindTagsFileInGitDir(expand("<afile>"))
augroup END
