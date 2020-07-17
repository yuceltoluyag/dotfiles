set nocompatible
filetype off
" Force loading python3
if has('python3')
endif

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd!
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

" Essential
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug '907th/vim-auto-save'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'qpkorr/vim-bufkill'
Plug 'terryma/vim-smooth-scroll'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bkad/camelcasemotion'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

"IDE like features
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'ludovicchabant/vim-gutentags'
Plug 'StanAngeloff/php.vim'
Plug 'easymotion/vim-easymotion'
Plug 'honza/vim-snippets'
Plug 'kkoomen/vim-doge'

" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Dart and Flutter
Plug 'dart-lang/dart-vim-plugin'

" Laravel Projects
Plug 'jwalton512/vim-blade'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-laravel'

"Twig Template
Plug 'evidens/vim-twig'

" Colorscheme Collections
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'arcticicestudio/nord-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'chriskempson/tomorrow-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'lifepillar/vim-solarized8'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

call plug#end()

let g:indent_guides_exclude_filetypes = ['nerdtree']
" Nerd Tree Config
"set guifont=DroidSansMono\ Nerd\ Font\ 11
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set guifont=Iosevka\ Nerd\ Font\ 14

let g:airline_powerline_fonts = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_startify = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:webdevicons_enable_denite = 1
let g:WebDevIconsTabAirLineAfterGlyphPadding = ' '
let g:WebDevIconsTabAirLineBeforeGlyphPadding = ' '

" Basic configuration
set encoding=utf-8
set hidden
set number
set relativenumber
set linespace=12
set title
set tabstop=4
set shiftwidth=4
set nobackup
set ignorecase
set smartcase
set nowrap
set nowritebackup
set updatetime=300
set nobackup
set noswapfile
set showmode
set autoindent
set smartindent
set cursorline
set mouse=a
set nocompatible
filetype plugin on
syntax on
set cc=80,120

" use space as leader
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

" enable AutoSave on Vim startup
let g:auto_save = 1  

" Down is really the next line
nnoremap j gj
nnoremap k gk
nnoremap J <Nop>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Buffer switcher using NerdTree
map <S-Right> :bnext<CR>
map <S-Left>  :bprevious<CR>
map <S-l> :bnext<CR>
map <S-h>  :bprevious<CR>
map <C-o> :NERDTreeToggle<CR>


" Split Navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Quick close buffers
nmap <C-x> :BD<CR>

" Quick remove search highlight
nnoremap ss :noh<CR>

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors     " enable true colors support


" Colorscheme configuration
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_undercurl = 1
let g:gruvbox_contrast_dark = "soft"

let g:PaperColor_Theme_Options = {  
      \ 'theme': {
      \ 'default': {
      \   'transparent_background': 0,
      \   'allow_bold': 1,
      \   'allow_italic': 1
      \ }
      \ }
      \}

let ayucolor="mirage"  " for light version of theme
set background=dark

" material themes
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'

set t_Co=256
colorscheme onedark

 
" make transparent window
"hi Normal guibg=NONE ctermbg=NONE

" COC behaviour configurations
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use tab and shift tab to navigate over completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use enter to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Filetype maping
let g:coc_filetype_map = {
  \ 'blade': 'html',
  \ }

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Vim airline custom themes
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='nord'

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.blade.php'

" Make it so that a curly brace automatically inserts an indented line
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>

" automatic resize vertical split when focus (like VSCode)
" let &winwidth = &columns * 7 / 10

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 0, 2)<CR>

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
  
noremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :                                            
              \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:indent_guides_enable_on_vim_startup = 1

let g:camelcasemotion_key = '<leader>'
map <silent> b <Plug>CamelCaseMotion_b

"Fzf Config
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o -path 'vendor/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
let $FZF_DEFAULT_OPTS='--layout=reverse --margin=1,0'

let g:fzf_layout = { 'window': 'call FloatingFZF()' }
 
function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
 
  let height = float2nr(10)
  let width = float2nr(80)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1
 
  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
 
  call nvim_open_win(buf, v:true, opts)
endfunction

" Files Navigation using fzf
map <C-p> :Files<CR>
map <C-e> :Buffers<CR>
map <C-t> :BTags<CR>
map <C-f> :Rg<CR>

command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

let g:lens#width_resize_min = 80
let g:lens#animate = 0