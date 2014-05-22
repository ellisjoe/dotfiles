filetype plugin on
filetype indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
syntax enable
set background=dark
colorscheme solarized

" don't keep a swap file
set noswapfile

" show line numbers on left
set number

" show column numbers in statusline
set ruler

" show file name in statusline
set statusline=%f

" allow vim to find tags file in parent directories
set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,tags

" exit insert mode without leaving home row
inoremap jj <Esc>

" open text files with markdown syntax and spell checking
au BufNewFile,BufRead *.txt setf markdown

" set glsl as syntax for files
au BufNewFile,BufRead *.frag,*.vert,*.vsh,*.fsh setf glsl

" this was commented out with zsh/solarized --- let g:solarized_termcolors=256
" set t_Co=256




" ##### added for vim-latex ######
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
