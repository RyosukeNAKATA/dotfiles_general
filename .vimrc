set nowritebackup
set nobackup
set virtualedit=block
set backspace=indent,eol,start
set ambiwidth=double
set wildmenu
inoremap <silent> jj <ESC>
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
set noerrorbells
set shellslash
set showmatch matchtime=1
set cinoptions+=:0
set cmdheight=2
set laststatus=2
set showcmd
set display=lastline
set list
set listchars=tab:^\ ,trail:~
set history=10000
hi Comment ctermfg=3
set expandtab
set shiftwidth=4
set softtabstop=2
set tabstop=2
set guioptions-=T
set guioptions+=a
set guioptions+=R
set showmatch
set smartindent
set noswapfile
set nofoldenable
set title
set number
set clipboard=unnamed,autoselect
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
syntax on
set nrformats=
set whichwrap=b,s,h,l,<,>,[,],~
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp

augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

if has("autocmd")
  augroup redhat
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif