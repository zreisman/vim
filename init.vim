call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'
Plug 'tpope/vim-unimpaired'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'danro/rename.vim'
call plug#end()

set nocompatible      " We're running Vim, not Vi!
set number
set norelativenumber
"set cursorline
"set laststatus=2
"set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=100
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
set timeoutlen=1000 ttimeoutlen=0 "Exit insert immediately
map <leader>fo za
"Ruby hash conversion
nnoremap <leader>h F:<Del>ea:<Esc>wde<Del>
set ic
set backspace=2 " make backspace work like most other apps
syntax on             " Enable syntax highlighting
"set synmaxcol=2048 "Help with syntax highlighting slowdown
"IndentGuides Stuff
"let g:indent_guides_auto_colors=1

"let g:python_host_prog='/usr/local/bin/python'
color onedark
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin indent on    " Enable filetype-specific plugins
"#autocmd VimEnter * NERDTree
map  <C-n> :NERDTreeToggle<CR>
"map  <leader>t :TagbarToggle<CR>
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
"nnoremap <D-T> <C-P>
"Delete the current buffer and file on disk
"nnoremap <leader><leader>rm :call delete(expand('%')) \| bdelete!<CR>
"NERDCommenter
set splitbelow
set splitright
let NERDTreeShowBookmarks=1

"EasyMotion Settings
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

"indent-line
let g:indentLine_enabled = 0
map <leader>il :IndentLinesToggle<CR>
"nnoremap <leader>] <C-W>}
"nnoremap <leader>[ <C-W>z
"vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-u>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"let &t_SI = \"\<Esc>]50;CursorShape=1\x7"
"let &t_SR = \"\<Esc>]50;CursorShape=2\x7"
"let &t_EI = \"\<Esc>]50;CursorShape=0\x7"
"silver_searcher/ ag
"let g:ag_working_path_mode="r"

"search-pulse
"let g:vim_search_pulse_duration=30
"let g:vim_search_pulse_disable=0

"CTRLP
"let g:ctrlp_open_new_file = 'r'

"if executable('ag')
    "Note we extract the column as well as the file and line number
   "set grepprg=ag\ --nogroup\ --nocolor\ --column
   "set grepformat=%f:%l:%c%m
      "Use ag in CtrlP for listing files. Lightning fast and respects
    ".gitignore
   "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    "ag is fast enough that CtrlP doesn't need to cache
   "let g:ctrlp_use_caching = 0
   "nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
 "endif
 "if has('mouse_sgr')
   "set ttymouse=sgr
 "endif
 
 "tag generation command
 "ctags --tag-relative=yes -R -f .git/tags --languages=ruby,javascript --exclude=.git --exclude=log . $(bundle list --paths)
 "config for ctags
"set tags=./tags;,./TAGS;,tags,TAGS
  "Check .git/tags for ctags file.
"fun! FindTagsFileInGitDir(file)
  "let path = fnamemodify(a:file, ':p:h')
  "while path != '/'
    "let fname = path . '/.git/tags'
    "if filereadable(fname)
      "silent! exec 'set tags+=' . fname
    "endif
    "let path = fnamemodify(path, ':h')
  "endwhile
"endfun

"augroup CtagsGroup
  "autocmd!
  "autocmd BufRead * call FindTagsFileInGitDir(expand("<afile>"))
"augroup END
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)

 "These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
 "Without these mappings, `n` & `N` works fine. (These mappings just provide
 "different highlight method and have some other features )
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

 "Syntastic Settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:vimrubocop_config = '/Users/zreisman/dev/ProductsSite/.ruby-style.yml'
"let g:vimrubocop_keymap = 0
"nmap <Leader>r :RuboCop<CR>

"Offer to reload changes files
"au CursorHold * checktime

 "Reload vimrc after saving
"au BufWritePost .vimrc so $MYVIMRC

 "ruby path if you are using RVM
let g:ruby_path = system('rvm current')
"map <leader>== :call AutoFormatRails()<CR>
"autocmd BufRead,BufNewFile *.html.erb setlocal filetype=html.eruby
