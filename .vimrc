set nu
syntax on
set cindent
set tabstop=4

set wildmenu
set hlsearch

"Redece delay of ESC
set timeout
set timeoutlen=1000
set ttimeout
set ttimeoutlen=10


"*********
" True color enable for tmux,
"*********
if has("termguicolors")
    set termguicolors
endif
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[38;2;%lu;%lu;%lum"
endif

"Plug start
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-theme'
Plug 'connorholyday/vim-snazzy'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'frazrepo/vim-rainbow'
call plug#end()
"Plug start

"**********
" Configurations for gruvbox
"**********
let g:gruvbox_hls_cursor='aqua'
let g:gruvbox_color_column='bg1'
let g:gruvbox_contrast_dark='hard'
set background=dark

colorscheme gruvbox

"**********
" Configurations for NERDTree
"**********
map <F3> :NERDTreeToggle<CR>
map <F2> :NERDTreeMirror<CR>
map t    :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$']

"**********
" Configurations for FZF
"**********
map <C-p> :FZF<CR>

"**********
" Configurations for vim-rainbow
"**********
let g:rainbow_active=1












