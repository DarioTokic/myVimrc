set number
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set noerrorbells
set smartindent
set nowrap
set noswapfile
set incsearch
set nohlsearch
set scrolloff=8
set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'Jorengarenar/vim-sBnR'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/loremipsum'
Plug 'christoomey/vim-system-copy'

"Plug 'cdelledonne/vim-cmake'

call plug#end()

"CoC Autocomplete

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()



let g:floaterm_position = 'bottom'
let g:floaterm_width = 1.0
let g:floaterm_height = 0.3

let mapleader=" "

nmap <c-t> :FloatermNew<cr>
nmap <c-f> :FloatermNew fff<cr>

"let g:cmake_link_compile_commands = 1
"nmap <leader>cg :CMakeGenerate<cr>
"nmap <leader>cb :CMakeBuild<cr>

colorscheme gruvbox
set background=dark


