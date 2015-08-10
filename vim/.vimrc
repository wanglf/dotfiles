" begin vundle configuration
" pre job: 
" 1. mkdir -p ~/.vim/bundle/ && cd ~/.vim/bundle/
" 2. git clone https://github.com/gmarik/Vundle.vim.git
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'

" fugitive for git
Plugin 'tpope/vim-fugitive'

" youcompleteme 
" Plugin 'Valloric/YouCompleteMe'

" Vim plugin, provides insert mode auto-completion for quotes, parens,
" brackets, etc.
Plugin 'Raimondi/delimitMate'

" Syntax checking hacks for vim
" Plugin 'scrooloose/syntastic'

" lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'
" Plugin 'edkolev/tmuxline.vim'


" snipMate plugin
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" markdown vim mode
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" disable the folding configuration:
" let g:vim_markdown_folding_disabled=1
" Highlight YAML frontmatter as used by Jekyll:
let g:vim_markdown_frontmatter=1

" set snips_author variable
let g:snips_author='wanglifeng'

" nerdtree plugin
" autocmd vimenter * NERDTree
" close nerdtree when the last window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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
"settings for plugin scrooloose/syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" vim-airline
" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
set laststatus=2

" Separators can be configured independently for the tabline, so here is how
" you can define "straight" tabs:
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" set t_Co=256
set autoindent
set cindent
set smartindent
set ts=4
set shiftwidth=4

" set expandtab
" used by fugitive to show current git branch
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"detect and display in right encoding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
