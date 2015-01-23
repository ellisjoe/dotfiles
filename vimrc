filetype plugin on
filetype indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
syntax enable
set background=dark
set mouse=a
colorscheme solarized

" enable pathogen
execute pathogen#infect()

" don't keep a swap file
set noswapfile

" show line numbers on left
set number

" show column numbers in statusline
set ruler

" disable folding
set nofoldenable

" allow vim to find tags file in parent directories
set tags=tags

" exit insert mode without leaving home row
inoremap jj <Esc>

set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

" open text files with markdown syntax and spell checking
au BufNewFile,BufRead *.txt setf markdown

" set glsl as syntax for files
au BufNewFile,BufRead *.frag,*.vert,*.vsh,*.fsh setf glsl
au BufNewFile,BufRead *.coffee setf js
au BufNewFile,BufRead *.gradle setf groovy

" let mapleader = ","
" this was commented out with zsh/solarized --- let g:solarized_termcolors=256

" better colors when logging in remotely through tmux
let g:remoteSession = ($STY == "")
if g:remoteSession
    set t_Co=256
endif

" Turn off folding
set nofoldenable

" fix some fucked up Vim 7.4 backspace problems
set backspace=2

" read pdf into buffer
command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -


" ########################
" #### Java Specifics ####
" ########################
" Highlight functions using Java style
let java_highlight_functions="style"
" Don't flag C++ keywords as errors
let java_allow_cpp_keywords=1

" ###########################
" #### Vim-lldb Settings ####
" ###########################

" same mappings as Eclipse
map <F5> :Lstepin<CR>
map <F6> :Lnext<CR>
map <F7> :Lfinish<CR>
map <F8> :Lcontinue<CR>

" toggle breakpoints
map <C-b> :Lbreakpoint<CR>


" ###########################
" #### NERDTree settings ####
" ###########################

" Ctrl-n opens NERDTree
map <C-n> :NERDTreeToggle<CR>

" show current file in NERDTree
nmap ,n :NERDTreeFind<CR>

" ignore dirs containing build
let NERDTreeIgnore=['\~$', 'build[[dir]]']
let g:ctrlp_custom_ignore = {
  \ 'dir':  'build',
  \ }

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h


" #############################
" #### EasyMotion Settings ####
" #############################
" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
hi EasyMotionTarget2First ctermbg=none ctermfg=red
hi EasyMotionTarget2Second ctermbg=none ctermfg=red


" ###########################
" #### Fugitive Settings ####
" ###########################

" Map .. to move up to the parent commit when viewing a tree or blob object
autocmd User fugitive if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' | nnoremap <buffer> .. :edit %:h<CR> | endif


" ############################
" #### Vim-Latex Settings ####
" ############################

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat = 'pdf'
" vim-latex useful commands:
" \ll  : compile file
" \rf  : fold all (unfold if cursor is on a fold)
" za   : fold/unfold section under cursor


" load the types.vim highlighting file, if it exists
autocmd BufRead,BufNewFile *.[ch] let fname = expand('<afile>:p:h') . '/tags.vim'
autocmd BufRead,BufNewFile *.[ch] if filereadable(fname)
autocmd BufRead,BufNewFile *.[ch]   exe 'so ' . fname
autocmd BufRead,BufNewFile *.[ch] endif

map <F2>  :so tags.vim<CR>

" ################################
" #### YouCompleteMe Settings ####
" ################################
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
