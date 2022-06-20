
" install vim plug if not installed already, code via lukesmithxyz
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif 

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
call plug#end()


"-----------------------------------------------------
" General
"-----------------------------------------------------
set autoindent 		" newlines match indent
set smartindent 	" inset tab stop number of spaces
set shiftwidth=4 	" 4 space shift
set smarttab     	" inset tab stop number of space on tab
set tabstop=4    	" tab  4 spaces
set relativenumber 	" shows relative number of lines based on current line
set number 			" shows line number
set wildmenu 		" command line tab complete as menu
set lazyredraw 		" don't update screen screee during script execution 
set showmatch		" shows matching { or (
set incsearch		" shows partial matches

colorscheme gruvbox
set bg=dark
syntax on			 

"-----------------------------------------------------
" Key bindings
"-----------------------------------------------------
:imap ii <Esc> 

"-----------------------------------------------------
" Commands 
"-----------------------------------------------------
  

"-----------------------------------------------------
" Plug in options 
"-----------------------------------------------------

" YCM
set completeopt=longest,menuone  " turns off the perview window for YCM


" Vim Rainbow
let g:rainbow_active = 1		" turn on for all files
