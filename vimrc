" Reminders:
" - Search and replace -> *cgn
"   - *: start search for word under cursor
"   - c: change
"   - gn: next match

let mapleader = ","

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let g:ctrlp_map = "<leader>f"
let g:ctrlp_cmd = "CtrlP"
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_custom_ignore = { "dir": "\v[\/]\.(git|hg|svn)$", "file": "\v\.(exe|so|dll)$" }

filetype off
filetype plugin indent on

syntax on

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set background=dark
set clipboard=unnamedplus
set mouse=a
set modelines=0
set encoding=utf-8
set textwidth=80
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set timeoutlen=1000
set ttimeoutlen=0
set nocompatible
set hlsearch
set number
set ruler
set wrap
set expandtab
set noshiftround
set hidden
set ttyfast
set showmode
set showcmd
set noswapfile
set splitright
set splitbelow

" Toggle file explorer
nnoremap <leader>e :NERDTreeToggle<CR>

" Write-all buffers
nnoremap <leader>w :wa<CR>

" Write and quit all buffers
nnoremap <leader>wq :wqa<CR>

" List all buffers
nnoremap <leader>lb :ls<CR>

" Select buffer
nnoremap <leader>sb :b

" Delete buffer
nnoremap <leader>db :bd<CR>

" Highlight selected
nnoremap <leader>hs :let @/ = @"<CR>n

" Stop highlighting
nnoremap <leader>sh :noh<CR>

" New empty pane on right
nnoremap <leader>pr :vnew<CR>

" New empty pane on bottom
nnoremap <leader>pb :new<CR>

" Increase pane width
nnoremap <leader>iw :vertical resize +5<CR>

" Decrease pane width
nnoremap <leader>dw :vertical resize -5<CR>

" Increase pane height
nnoremap <leader>ih :resize +5<CR>

" Decrease pane height
nnoremap <leader>dh :resize -5<CR>

" Equalize vertical and horizontal panes
nnoremap <leader>= <C-w>=

" Move to left pane
nnoremap <leader>hh <C-w>h

" Move to right pane
nnoremap <leader>ll <C-w>l

" Move to top pane
nnoremap <leader>kk <C-w>k

" Move to bottom pane
nnoremap <leader>jj <C-w>j

autocmd vimenter * ++nested colorscheme gruvbox
