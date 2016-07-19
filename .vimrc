" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" BundleInstall

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:

Bundle 'Align'
Bundle 'tpope/vim-rails'
Bundle 'msanders/snipmate.vim'
"Bundle 'drmingdrmer/xptemplate'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/yajs.vim'
Bundle 'mxw/vim-jsx'
Bundle 'dsawardekar/ember.vim'
Bundle 'heartsentwined/vim-emblem'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'hallison/vim-markdown'
Bundle 'groenewege/vim-less'
"Bundle 'parkr/vim-jekyll'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5.vim'
Bundle 'slim-template/vim-slim'
"Bundle 'tpope/vim-haml'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tomasr/molokai'
"Bundle 'NLKNguyen/papercolor-theme'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/matchit.zip'

set t_Co=256
colorscheme  molokai
"colorscheme PaperColor-Dark
set guifont=DejaVu\ Sans\ YuanTi\ Mono\ 10

set nobackup
set nowritebackup

"语法高亮
syntax on

"打开命令行补全菜单
set wildmenu
"关闭响铃，闪屏
set vb t_vb=
"显示行号
set nu
"马上跳到搜索匹配
set incsearch

"根据文件格式载入插件和缩进
filetype plugin indent on
set autoindent

"打开鼠标功能
set mouse=a

"指标符宽度
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

set encoding=utf-8
set ambiwidth=double

" Display extra whitespace
"set list listchars=tab:»·,trail:·

if has("autocmd")
  autocmd BufRead,BufNewFile *.php set filetype=html.php
  autocmd BufRead,BufNewFile *.hbs set filetype=html.hbs
  autocmd BufRead,BufNewFile *.scss set filetype=css.scss
endif

autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab
autocmd FileType eruby  set tabstop=2 shiftwidth=2
autocmd FileType ruby,rdoc set tabstop=2 shiftwidth=2
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd FileType javascript set tabstop=2 shiftwidth=2
autocmd FileType coffee set tabstop=2 shiftwidth=2
autocmd FileType css set tabstop=2 shiftwidth=2
au! BufRead,BufNewFile *.json setfiletype json

fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()

" 快捷键
nmap <Up> <c-w>k
nmap <Down> <c-w>j
nmap <Right> <c-w>l
nmap <Left> <c-w>h

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

nmap <F2> :w<cr>
nmap <F3> :wa<cr>
nmap <F4> :q<cr>
nmap <F6> :cp<cr>
nmap <F7> :cn<cr>
nmap <F11> gg=G<C-o>

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }

nmap <A-up> :lprev<cr>
nmap <A-down> :lnext<cr>
nmap <A-right> :ll<cr>
map <C-n> :NERDTreeToggle<CR>
