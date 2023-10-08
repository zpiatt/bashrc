syntax on
set smartindent
set shiftwidth=4
set smarttab
set expandtab
set tabstop=8
set softtabstop=0
set ignorecase
set smartcase
set incsearch
set laststatus=2
set number
set timeoutlen=200 ttimeoutlen=0
set noswapfile
set pastetoggle=<F3>
set cursorline
set scrolloff=8
set wildmode=longest,list,full
set colorcolumn=100
set noshowmode
if version >= 703 | set belloff=all | endif

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap S :%s//gc<Left><Left><Left>
inoremap jj <Esc>
nnoremap ,<space> :put! _<cr>
nnoremap .<space> :put _<cr>
nnoremap f :Ex<CR>
nnoremap F :Tex<cr>
nnoremap <TAB> :tabnext<cr>
nnoremap <S-TAB> :tabprev<cr>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_dirhistmax = 0
let g:netrw_split_browse = 3

if version >= 500
  augroup LaunchNetrw
    autocmd!
    autocmd VimEnter * if !argc() | Explore | endif
  augroup END
  augroup WhiteSpace
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
  augroup END

  if !has('gui_running')
    set t_Co=256
    augroup colorset
      autocmd!
      let s:white = { 'gui': '#ABB2BF', 'cterm': '145', 'cterm16' : '7' }
      autocmd ColorScheme * call onedark#set_highlight('Normal', { 'fg': s:white })
    augroup END
  else
    set guifont=Noto_mono:h15
  endif
endif

colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }
