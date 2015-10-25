" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" window behavior
set splitright             " v-split new windows to the right
set splitbelow             " split new windows below

" history
if has('persistent_undo')
	set undofile             " Save history to undofile
	set undodir=~/.vim/.undo " undofiles location
endif

" visual
set nu 	                   " Show line numbers
set nowrap                 " Don't wrap lines
set cursorline             " Draw a line under the active cursor line
set lazyredraw             " Don't redraw screen while executing macros/registers/untyped commands
set colorcolumn=80         " Highlight the 80th column
set hlsearch               " Highlight previous search pattern matches

" buffer behavior
set hidden                 " Don't abandon unsaved buffer when switching to another buffer
set autowriteall           " Write when executing commands; implies autowrite also

" text format
set tabstop=2              " Number of spaces that a <Tab> counts for
set shiftwidth=2           " Number of spaces to use for each step of (auto)indent, e.g. >>, <<
set expandtab              " Use appropriate number of spaces to insert a <Tab>

if executable('ack')
  set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $* " Program to use for :grep
  set grepformat=%f:%l:%c:%m                                                  " Format to use for the :grep command output
endif

" mappings
let g:mapleader=","        " Set leader to comma, defaults to \
