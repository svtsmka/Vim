"////////////////		  Vim		////////////////


syntax on			"Turns on syntax highlighting
set number			"Line Numbers
set noswapfile		"Disabling swap files creation in vim
set noshowmode		"Insert status in vim

	"Rules regarding the same indents
set tabstop=4		"For tab characters that appear 4-spaces:
set shiftwidth=4	
set softtabstop=4
set noexpandtab


filetype plugin indent on 	"Includes file type detection
set encoding=utf-8			"Sets the encoding UTF-8
set nocompatible			"Disables (Vi) compatibility



"////////////////	Disable scrollbars в GUI
						
set guioptions-=m 	"Menu bar
set guioptions-=T 	"Toolbar
set guioptions-=r 	"Toolbar
set mouse=a			"Mouse enabled
set showtabline=0 	"Disable panel tab (FTW)

set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)


"	Disable annoying beeping
autocmd GUIEnter * set vb t_vb=


set ttimeoutlen=10 	"Disable timeout on esc key
let &t_SI.="\e[5 q" "SI = Insert mode
let &t_SR.="\e[3 q" "SR = Replacement mode
let &t_EI.="\e[1 q" "EI = Normal mode


"////////////////		Keymap		////////////////

"	Moving aroung in command mode
inoremap <M-h> <left>
inoremap <M-j> <down>
inoremap <M-k> <up>
inoremap <M-l> <right>

"	Fast moving aroung in command mode
noremap <C-h> 5h
noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-l> 5l


"	Paste system clipboard with Ctrl + v
inoremap <C-v> <ESC>"+gPi    
nnoremap <C-v> "+gP<ESC>
vnoremap <C-v> d"+gP<ESC>
cnoremap <C-v> <C-r>+


"	Cut to system clipboard with Ctrl + x
vnoremap <C-x> "+d
"nnoremap <C-x> "+dd
inoremap <C-x> <ESC>"+ddi


"	Copy to system clipboard with Ctr + c
vnoremap <C-c> "+y
nnoremap <C-c> "+yy
inoremap <C-c> <ESC>"+yyi


"	Copy all system clipboard with Ctr + a
map <C-a> ggVG


"	Search for a tag in the current file (Ctrl + p)
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


"	NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


"////////////////		Misc		////////////////

"	my lines within 80 characters
set colorcolumn=60
highlight ColorColumn ctermbg=gray





"	When you are typing text in Insert mode the characters are inserted directly. 
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz




"////////////////		Plugin		////////////////

call plug#begin()


Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'sickill/vim-monokai'

Plug 'morhetz/gruvbox'

Plug 'joshdick/onedark.vim'

Plug 'rakr/vim-one'

Plug 'flazz/vim-colorschemes'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'bling/vim-bufferline'

Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'lambdalisue/battery.vim'


call plug#end()

"////////////////////////////////////////////


"GUI font and language
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
	language en_GB.UTF-8                 " sets the language of the messages / ui (vim)
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
	language en                 " sets the language of the messages / ui (vim)

  endif
endif


"Theme
colorscheme onedark
set background=dark


"Cursor Settings
highlight Cursor  guibg=#98C379
highlight iCursor  guibg=#61AFEF
highlight vCursor  guibg=#C678DD
set guicursor=n-v-c:block-Cursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:ver15i-iCursor
set guicursor+=v:ver100-vCursor



" air-line
let g:airline_powerline_fonts = 1
set t_Co=256

let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1


" Note: You must define the dictionary first before setting values.
" Also, it's a good idea to check whether it exists as to avoid 
" accidentally overwriting its contents.

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
if exists('g:airline_powerline_fonts')
let g:airline_symbols.colnr = '  ' 


" powerline symbols
let g:airline_left_sep = '█▓▒░'
let g:airline_left_alt_sep = ' ▬ '

let g:airline_right_sep = '░▒▓█'
let g:airline_right_alt_sep = ' ▬ '

let g:airline_symbols.branch = ' ⮑ '
let g:airline_symbols.readonly = ' ⮔  '
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.dirty=' ⮕'


else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


"	Basic Settings CtrlSpace
set nocompatible
set hidden
set encoding=utf-8
set showtabline=0

hi link CtrlSpaceNormal   PMenu
hi link CtrlSpaceSelected PMenuSel
hi link CtrlSpaceSearch   Search
hi link CtrlSpaceStatus   StatusLine
