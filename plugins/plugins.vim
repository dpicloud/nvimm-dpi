"Plugins
call plug#begin('$HOME/.config/nvim/plugged')
" Temas
" Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'safv12/andromeda.vim'
Plug 'ghifarit53/tokyonight-vim'

" "IDE
Plug 'easymotion/vim-easymotion'
"Navigate with C-h C-l C-j C-k
"Navegar con C-h C-l C-j C-k
Plug 'christoomey/vim-tmux-navigator'
"NERDTREE
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

"ChadTree (Nerdtree Alternative )
"
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Close pairs () [] {} ''
"Cerrar los pares () [] {} '' 
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',
"colorizer plugin for #fe4918
Plug 'norcalli/nvim-colorizer.lua'
"Multiple cursor like in vscode
Plug 'terryma/vim-multiple-cursors'
"Have the indent lines 
Plug 'yggdroot/indentline'
"Git Integration ______________
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
"Smooth Scrolling
Plug 'psliwka/vim-smoothie'

"NeotTerm 
Plug 'kassio/neoterm'

"TERMINAL TOGGLE
Plug 'caenrique/nvim-toggle-terminal'

"CSS FOCUS
Plug 'turbio/bracey.vim'

"PWL FONTS
Plug 'powerline/fonts'

"Fugitive Vim GIT
Plug 'tpope/vim-fugitive'

"Rainbow para colorear corchetes
Plug 'luochen1990/rainbow'

"HTML match Tag
Plug 'gregsexton/matchtag'

"Para ts highlig
Plug 'leafgarland/typescript-vim'

"Emmet Html 
Plug 'mattn/emmet-vim'

"color icons -devicons
Plug 'ryanoasis/vim-devicons'

"color icons 2
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"ColorPicker
Plug 'KabbAmine/vCoolor.vim'


"Cerrar todos los buffers excepto el actual
Plug 'numtostr/BufOnly.nvim', { 'on': 'BufOnly' }

"Para los Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Para syntax de markdown
Plug 'gabrielelana/vim-markdown'

"Par añadir comentarios
Plug 'tpope/vim-commentary'
call plug#end()
