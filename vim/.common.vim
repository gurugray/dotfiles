set autoread

set autoindent
set smartindent
set smarttab

set wrap
set tabstop=4
set softtabstop=4
set linespace=1
set shiftwidth=4
set expandtab
set ruler
set cursorline

set showmatch
set hlsearch
set incsearch
set ignorecase

set lz
set listchars=tab:▸\.,eol:¬,trail:~
nmap L :set list!<CR>

set wildmenu
set laststatus=2
set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,cp866,koi8-r

set nobackup
set noswapfile

set foldcolumn=1
set foldmethod=syntax
set foldnestmax=10
set nofoldenable

set scrolljump=5
set scrolloff=3
set pastetoggle=<F3>

set synmaxcol=1000

set background=light
syntax enable

if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    colorscheme solarized             " Load a colorscheme
endif

if !exists('g:airline_theme')
    let g:airline_theme = 'solarized'
endif
if !exists('g:airline_powerline_fonts')
    " Use the default set of separators with a few customizations
    let g:airline_left_sep='›'  " Slightly fancier than '>'
    let g:airline_right_sep='‹' " Slightly fancier than '<'
endif

"set spell
"set spelllang=ru,en
