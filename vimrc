"
" Vim-Plug Configs
" Installation: https://github.com/junegunn/vim-plug#installation
"
    " install vim-plug automatically if it is not there already
    if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
            \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall | source $MYVIMRC
    endif

    " plug ins that we want to install
    call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'Yggdroot/indentLine'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'fholgado/minibufexpl.vim'
    call plug#end()

"
" Key Mappings
"
    " set <leader> to be space key
    let mapleader=" "

    " reload vim configuration
    map <Leader>s :source ~/.vimrc<CR>

    " move to left, down, up, right buffers
    map <C-h> <C-W>h
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-l> <C-W>l

    " toggle NERDTree on and off
    map <C-n> :NERDTreeToggle<CR>

    " quick save
    nnoremap <Leader>w :w<CR>

"
" Wrap Configs
"
    " allow specified keys to move the cursor move to the next line
    set whichwrap+=<,>,h,l

    " turn on wraparound for text when it gets too long
    set wrap

"
" Tab Configs
"
    " # of columns for \\t
    set tabstop=4

    " replace tab with spaces
    set expandtab

    " # of spaces for tab
    set shiftwidth=4

    " # of columns for tab key or backspace
    set softtabstop=4

    " smart auto indent for new line
    set smartindent

"
" Search Configs
"
    " turn on highlight search
    set hlsearch

    " incrementally highlights as searching
    set incsearch

    " turn on regex for search
    set magic

    " get rid of highlighting for a search
    nnoremap <silent> <Leader><Esc> :nohl<CR>

"
" File and Backup Configs
"
    " no backup after file has been written
    set nobackup
    set nowritebackup

    " turn off swap file
    set noswapfile

    " use unix as the standard file type
    set ffs=unix,dos,mac

    " undo file configurations
    try
        " try to create the undo-dir
        if !isdirectory($HOME."/.vim/undodir")
            call mkdir($HOME."/.vim/undodir", "", 0700)
        endif

        set undofile
        set undodir=~/.vim/undodir
    catch
    endtry

"
" Misc Configs
"
    filetype indent plugin on
    syntax on
    colorscheme Tomorrow-Night

    set number
    set colorcolumn=80
    set hidden
    set history=250
    set backspace=indent,eol,start

    " set utf8 as standard encoding and en_us as standard language
    set encoding=utf8

    " disable redraw when executing macros
    set lazyredraw

    " show matching brackets
    set showmatch

    " splits new verticle split to the right and new horizontal to the bottom
    set splitbelow splitright

    " removes trailing whitespaces
    autocmd BufWritePre * :%s/\s\+$//e

"
" Go Configs
"
    autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=0 noexpandtab

"
" C Configs
"
    autocmd FileType c setlocal shiftwidth=2 tabstop=2 softtabstop=0
