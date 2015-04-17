set nocompatible 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
" My plugins: -----------------------------------------------
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/LustyJuggler'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'vim-scripts/UltiSnips'
Bundle 'vim-scripts/mru.vim'
"Bundle 'tsaleh/vim-matchit'
Bundle 'altercation/vim-colors-solarized'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

map <F2> :NERDTreeToggle $HOME <CR>
nnoremap <F8> :NERDTreeFind <CR>

let mapleader=","
nmap <leader>v :tabedit $MYVIMRC <CR>

nnoremap ; :
inoremap jk <Esc>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Copy and paste:
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<Esc>"+p
imap <C-v> <Esc>"+pa

nnoremap <F4> :set hlsearch! hlsearch?<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <Space> za
inoremap <C-s> <C-o>:Update<CR><CR>

colorscheme solarized
if has('gui_running')
    set background=light
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    let g:solarized_contrast="high"
    let g:solarized_visibility="high"
else
    " in terminalmode
    set background=dark
    set t_Co=16
    let g:solarized_termcolors=16
endif

set softtabstop=4
set tabstop=4
set sw=4
set number
set expandtab
set encoding=utf-8

let g:tex_flavor='latex'
set wildignore=*.swp,*.bak,*.pyc,*.class
set nobackup
set noswapfile

" Remove all ^M:
nnoremap <leader>rm :%s/\r\(\n)/\1/g <CR>

" Better indentation:
vnoremap < <gv 
vnoremap > >gv 

let g:airline_powerline_fonts=1

function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i

set colorcolumn=80

autocmd Filetype tex source ~/.vim/auctex.vim

" UltiSnips:
"
let g:UltiSnipsExpandTrigger="<c-u>"
   "g:UltiSnipsExpandTrigger               <tab>
   "g:UltiSnipsListSnippets                <c-tab>
   "g:UltiSnipsJumpForwardTrigger          <c-j>
   "g:UltiSnipsJumpBackwardTrigger         <c-k>
