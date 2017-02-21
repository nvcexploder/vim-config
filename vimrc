" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" shell
set shell=/bin/bash        " force shell to bash when executing stuff

" window behavior
set splitright             " v-split new windows to the right
set splitbelow             " split new windows below
set mouse=a                " enable mouse

" history
if has('persistent_undo')
  set undofile             " Save history to undofile
  set undodir=~/.vim/.undo " undofiles location
endif

" swap
set directory-=.           " Don't put swap files in '.'
set backupdir-=.           " Don't put backup files in '.'

" visual
set number 	               " Show line numbers
set nowrap                 " Don't wrap lines
set cursorline             " Draw a line under the active cursor line
set lazyredraw             " Don't redraw screen while executing macros/registers/untyped commands
set hlsearch               " Highlight previous search pattern matches
set scrolloff=3            " show extra context when nearing vertical screen borders
set sidescrolloff=5        " show extra context when nearing vertical screen borders
set foldlevelstart=99      " don't auto-fold
" colorscheme github         " Use modified github colorscheme

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
nnoremap \ :NERDTreeToggle<CR> " Toggle NERDTree
nnoremap \| :NERDTreeFind<CR>  " Open NERDTree to current file
nnoremap Y y$                  " Make Y yank from the cursor to the end of line
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>"" " clear highlights on space

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" vim-go
let g:go_fmt_command = "goimports" " Run goimports rather than gofmt
" let g:go_auto_sameids = 1          " Automatically run 'guru what' under cursor

" syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] } " Disable by default; run :SyntasticCheck instead

