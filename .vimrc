syntax on			"Включает подсветку синтаксиса
set number
set tabstop=4
set shiftwidth=4
set noswapfile
set noshowmode

filetype plugin indent on 	 "Включает определение типа файла, загрузку...
set encoding=utf-8			 "Ставит кодировку UTF-8
set nocompatible			"Отключает обратную совместимость с Vi


				"Отключаем панели прокрутки в GUI
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "
set mouse=a
set showtabline=0 "Отключаем панель табов (окошки FTW)

set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
language en                 " sets the language of the messages / ui (vim)


" Disable annoying beeping
autocmd GUIEnter * set vb t_vb=


"Компиляция по F5:
nmap <F5> :make<CR>
imap <F5> <ESC>:make<CR>


 " moving aroung in command mode
inoremap <M-h> <left>
inoremap <M-j> <down>
inoremap <M-k> <up>
inoremap <M-l> <right>


noremap <C-h> 5h
noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-l> 5l



" Paste system clipboard with Ctrl + v
inoremap <C-v> <ESC>"+gPi    
"nnoremap <C-v> "+gP<ESC>
vnoremap <C-v> d"+gP<ESC>
cnoremap <C-v> <C-r>+

" Cut to system clipboard with Ctrl + x
vnoremap <C-x> "+d
"nnoremap <C-x> "+dd
inoremap <C-x> <ESC>"+ddi

" Copy to system clipboard with Ctr + c
vnoremap <C-c> "+y
nnoremap <C-c> "+yy
inoremap <C-c> <ESC>"+yyi


set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим




set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz


"Язык ввода при старте Вима - Английский
set iminsert=0
"Аналогично настраивается режим поиска
set imsearch=0




""		Plugin 

call plug#begin()

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'vim-syntastic/syntastic'

Plug 'junegunn/vim-plug'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


"colorschemes
Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'

Plug 'flazz/vim-colorschemes'             " Colorschemes

Plug 'powerline/fonts'

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme onedark
set background=dark


let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


let g:airline#extensions#tabline#formatter = 'tmuxline'

" air-line
let g:airline_powerline_fonts = 1


