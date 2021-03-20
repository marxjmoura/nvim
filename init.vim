"
" Plugins (requires vim-plug)
"

call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" Code highlight
Plug 'sheerun/vim-polyglot' 

" Code completion
Plug 'ncm2/ncm2'

" Pair autocompletion
Plug 'jiangmiao/auto-pairs'

" Fuzzy file search (requires fzf)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'

call plug#end()

"
" Theme settings
"

colorscheme gruvbox
set background=dark

"
" Vim built-in settings
"

set hidden            " Allow multiple unsaved files
set number            " Show the line number
set mouse=a           " Enable mouse interaction
set inccommand=split  " Show replace preview

"
" Custom commands
"

" Press the spacebar before typing the custom command
let mapleader="\<space>"

"
" Custom shortcuts
"

" ctrl+P: Fuzzy file search
nnoremap <c-p> :Files<cr>

" ctrl+H: Find and replace in the current file
nnoremap <c-h> :%s/

" ctrl+F: Find content in all files (requires silversearcher-ag)
nnoremap <c-f> :Ag<space>

