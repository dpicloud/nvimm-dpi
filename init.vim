"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A					    

"---------------------------------vim config---------------------------- 
syntax on 
set number 
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
"set relativenumber
"set number
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L


"set NERDTreeToggleVCS

"============== TEST AREA ===========
"Ubuntu
"test

"Get out of insert mode  
"Salir de modo insertar
imap hh <Esc>
imap HH <Esc>2
imap <C-c> <Esc>l
imap <C-e> <Esc>3
nmap <C-e> a
nmap <C-c> a
"Posicionarse al inicio o final de una linea
nmap n 0 
nmap m $

" Añadir comentario 
noremap <leader>ç :Commentary<cr>

" Añadir texto o pedaso de texto
" imap <C-k> texto de test

"######### GUARDADO #########
"Salir de modo insertar y guardar
imap hhw <Esc>:w<Enter>
"Guardar y subida automatica a rama-respaldo
imap <C-s> <Esc>:w<Enter>
nmap <C-s> :w<Enter>

"######### AutoSabe / git
"---Guardar y subir a git branch
imap <C-s><C-s> <Esc>:! git checkout master && git add . && git commit -m "/as-m" && git push -u origin master && :! git checkout as <Enter>
nmap <C-s><C-s> :! git checkout master && git add . && git commit -m "/as-m" && git push -u origin master && :! git checkout as <Enter>

"cerrar y salir modos
nmap <C-x> :qa
nmap <C-x><C-x><C-x> :qa!


"Salir de modo insert, guardar y subida r eapida mediante git GGG -low importance 
"imap hhwg <Esc>:w<Enter> :terminal<Enter> git add . & git commit -m "update hgit L/I & git push -u origin master
"imap hhwg <Esc>:w<Enter> :! git add . & git commit -m "update hgit L/I & git push -u origin master <Enter>


"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Sources-------------------------------
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/plug-config.vim
source $HOME/.config/nvim/themes/onedark.vim
"--------------------------------Plugins Config--------------------------------------------

" toggle terminal
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>
"////

"Salir y seleccionar arriba del terminal 
tnoremap <silent> <C-q><C-q> <C-\><C-n><C-w><C-k>

"Regresar al terminal abierto
nnoremap <silent> <leader>t <C-w><C-j>i

" Abrir terminal abajo
"nnoremap <silent> <leader>t :ToggleTerminal<Enter><C-\><C-n>:split<Enter><C-w><C-r><C-w><C-k><TAB>
nnoremap <silent> <C-t> :split<Enter>:terminal bash<Enter><C-\><C-n><C-w><C-r><C-w><C--><C-w><C--><C-w><C-->i

"Minimizar y Maximizar terminal inside
tnoremap <silent> <C-n><C-n> <C-\><C-n><C-w><C--><C-w><C--><C-w><C--><C-w><C-->i
tnoremap <silent> <C-m><C-m> <C-\><C-n><C-w><C-+><C-w><C-+><C-w><C-+><C-w><C-+>i

"=======================================================================================

" sneak config 
let g:sneak#label = 1

"Color rainbown corchetes y llaves 
nmap <leader>rain :RainbowToggle<Enter>

"######################################## GIT CONFIGS #################################

"Git add .
nmap <leader>ga :! git add .

"Git commit  
nmap <leader>gc :! git commit -m "

"Git push to master
nmap <leader>gp :! git push -u origin 

"Git Checkout Branch
nmap <leader>gw :! git checkout 

"Git status 
nmap <leader>gs :! git status 

"Git fetch 
nmap <leader>gf :! git fetch 

"Git pull 
nmap <leader>gu :! git pull 

"Git branch
nmap <leader>gb :! git branch 

"Git merge
nmap <leader>gm :! git merge 

"Git Fast Push To Master - Add with Commit -Update Low Importance
nmap <leader>ggg :! git add . ; git commit -m "3g up L/I"<Enter> :! git push -u origin 
"Experimental fow windows-----------------------------

"imap hhwgc <Esc>:w <Enter>:terminal<Enter>git add . & git commit -m "GCG update & git push -u origin master
imap hhwgc <Esc>:w<Enter>:! git add .<Enter> :! git commit -m "WGC up M/I" ; git push -u origin 
nmap wgc :w<Enter>:! git add .<Enter> :! git commit -m "WGC up M/I" ; git push -u origin 
"=========================================================

"========== Git Banks Branches ===============  
"BANCO 0 MASTER
nmap <leader>g0 :! git checkout master 

"BANCO 1 dev
nmap g1 :! git checkout dev<Enter>

"BANCO 2 test
nmap g2 :! git checkout test<Enter>
 
"BANCO 2 back
nmap g3 :! git checkout back<Enter>


"OPEN VN notions
nmap <leader>notion :tabnew C:\Users\Acer\AppData\Local\nvim\VN-notions.md<Enter>

"OPEN VN notions
nmap <leader>init :tabnew   /home/lfranz/.config/nvim/init.vim<Enter> 


"split windows HORIZONTAL
nmap <leader>hw :sp <CR>

"split windows VERTICAL
nmap <leader>vw :vs<CR>

"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
"nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '/indent/'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]

"abrir Nerdtree

"toggle open nerdtree
nmap <Leader>e :NERDTreeToggle<CR>

"toggle close nerdtree
nmap <Leader>ee :NERDTreeRefreshRoot<CR>

"open cocExplorer 
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>
"--gruvbox config--
"colorscheme onedark
"let g:gruvbox_contrast_dark = "medium"

"Prettier
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"Rainbow Colorizador de corchetes 
let g:rainbow_active = 0 "set to 0 if you want to enable it later via :RainbowToggle

set cmdheight=1

let g:tokyonight_style = 'night' " available: night, storm
"let g:molokai_original = 1
let g:tokyonight_enable_italic = 1
colorscheme tokyonight
"colorscheme molokai

"Close tags automatically
"Cerrar tags automaticamente let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js' -----------------------------------------------------------------



"NeoTerm code 

set nocompatible
filetype off

let &runtimepath.='\home\lfranz\.config\nvim\plugged\neoterm'

"let &runtimepath.=',~/.vim/bundle/neoterm'
filetype plugin on


"----------------------------------------------
""Ruta de python 
let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog ='/usr/bin/python2'

" ESTE DE ARRIBA ERA PERO EN LINUX DEBE SER OTRA RUTA
"test text 


""Bracey configs
let g:bracey_server_allow_remote_connections = 1
let g:bracey_server_port = 33461
"let g:bracey_server_path = 'http://192.168.0.130'



"" Config para los SNIPPETS
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"


"configuracion para MARKDOWN
" autocmd InsertEnter  *.{markdown,md} set conceallevel=0
" autocmd InsertEnter  *.{markdown,md} set conceallevel=0
"autocmd InsertLeave  *.{markdown,md} set conceallevel=2


"-----------------------------------------------------------------------------------------
"Inteto de usar ruta de python
"let g:python_host_prog ='/Users/Acer/AppData/Local/Programs/Python/Python39/python.exe'
"let g:python3_host_prog = '/Users/Acer/AppData/Local/Programs/Python/Python39/python.exe'

"Inteto de usar ruta de python
"let g:python_host_prog = 'C:\Users\Acer\AppData\Local\Programs\Python\Python3\python.exe'
"let g:python3_host_prog = 'C:\Users\Acer\AppData\Local\Programs\Python\Python3\python.exe'

