let &titlestring = expand("%:t")
let titlepath = expand("%:p")

if empty(&titlestring)
	let &titlestring = "Terminal"
else
	let &titlestring = &titlestring . " (" . titlepath . ")" 
endif

if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif
if &term == "screen" || &term == "xterm"
  set title
endif

colorscheme delek
syntax on
set nu
set tabstop=4
set shiftwidth=4
" filetype plugin indent on
" set expandtab

noremap ' i
noremap i k
noremap k j
noremap j h

execute pathogen#infect()

" This comes first, because there are mappings that depend on leader
let mapleader = ","
let g:mapleader = ","

" CTRL+N x2 shows line numbers
nmap <C-N><C-N> :set invnumber <CR>     

" open spell checker
map <leader>ss :setlocal spell! <CR><CR> 

" Tab controls
nmap <leader>n :tabprevious<CR>
nmap <leader>m :tabnext<CR>
nmap <leader>t :tabnew<CR>

" force close/write and close
nmap <leader>q :q!<CR>
nmap <leader>qa :qa!<CR>
nmap <leader>wq :wq!<CR>
nmap <leader>wqa :wqa!<CR>
nmap <leader>w :w<CR>
