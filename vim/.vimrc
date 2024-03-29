set number

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" the place for other plugins
Plugin 'iamcco/markdown-preview.nvim'
"Plugin 'scrooloose/nerdtree' " file browsing plugin

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

"split tabs
set splitbelow
set splitright

"PEP8
au BufRead,BufNewFile *.md,*.py,*pyw set tabstop=4
au BufRead,BufNewFile *.md,*.py,*pyw set softtabstop=4
au BufRead,BufNewFile *.md,*.py,*pyw set autoindent
au BufRead,BufNewFile *.md,*.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.md,*.py,*.pyw set expandtab
au BufRead,BufNewFile *.md,*.py,*.pyw,*.c,*.h set textwidth=79
au BufNewFile *.md,*.py,*.pyw,*.c,*.h set fileformat=unix

" for full stack development
au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set shiftwidth=2
au BufNewFile,BufRead *.js,*.html,*.css set softtabstop=2

" markdown
au BufRead,BufNewFile *.md set tabstop=4
au BufRead,BufNewFile *.md set softtabstop=4
au BufRead,BufNewFile *.md set autoindent
au BufRead,BufNewFile *.md set shiftwidth=4
au BufRead,BufNewFile *.md set expandtab

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Black hotkey
set autoread
nnoremap <F9> :w<CR>:!clear;black %<CR>

" Undo file
set undofile
