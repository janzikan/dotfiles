" ### Encoding
set encoding=utf-8
lang en_US.UTF-8
set termencoding=utf-8
set fileencodings=utf-8,iso-8859-2


" ### Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/csapprox'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
call vundle#end()
filetype plugin indent on


" ### Color scheme
set t_Co=256
colorscheme badwolf


" ### Settings
set backspace=indent,eol,start
set scrolloff=3
set directory=/tmp
set nobackup
set noswapfile
set nowritebackup
set tabstop=2
set shiftwidth=2
set expandtab
set number
set splitbelow

" Show the cursor position all the time
set ruler

" Display incomplete commands
set showcmd

" Do incremental searching
set incsearch

" Always display the status line
set laststatus=2

" Case only matters with mixed case expressions
set ignorecase
set smartcase

" Tab completion options
set completeopt=longest,menu
set wildmode=list:longest,list:full

" Display extra whitespace
set list listchars=tab:»·,trail:·

syntax enable
au BufReadPost *.cap set syntax=ruby
au BufNewFile,BufRead *.csvbuilder setfiletype ruby


" ### Airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_section_c = "%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#"
let g:airline_section_b = ""


" ### NERDTree
" Show hidden files
let NERDTreeShowHidden=1

" Toggle on ctrl+n
map <silent> <C-n> :NERDTreeToggle<CR>


" ### Mappings
" , is the leader character
let mapleader = ","

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

" Open new tab on ctrl+t
map <silent> <C-t> :tabedit<CR>

" Leader shortcuts for Rails commands
map <Leader>m :Rmodel
map <Leader>c :Rcontroller
map <Leader>v :Rview
map <Leader>h :Rhelper
map <Leader>sf :Rspec features/
map <Leader>l :Rlocale
map <Leader>fa :find spec/factories<CR>

" Edit routes
command! Rroutes :e config/routes.rb
command! RTroutes :tabe config/routes.rb

" No Help, please
nmap <F1> <Esc>

" ident
" http://lucapette.com/vim/rails/vim-for-rails-developers-indenting-code/
map   <silent> <F5> mmgg=G`m^
imap  <silent> <F5> <Esc> mmgg=G`m^

" Re-select visual block after indenting
vnoremap < <gv
vnoremap > >gv
