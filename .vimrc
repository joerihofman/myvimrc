set nocompatible					" be iMproved, required
filetype off						" required
set rtp+=~/.vim/bundle/Vundle.vim	" set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'		" let Vundle manage Vundle, required for plugins


" Alle plugins
" The following are examples of different formats supported. Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'							" plugin on Github repo
Plugin 'L9'											" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'git://git.wincent.com/command-t.git'		" Git plugin not hosted on GitHub
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}			" git repos on your local machine (i.e. when working on your own plugin)
													">>Plugin 'file:///home/gmarik/path/to/plugin'
													" The sparkup vim script is in a subdirectory of this repo called vim.
													" Pass the path to set the runtimepath properly.
Plugin 'ascenator/L9', {'name': 'newL9'}			" Install L9 and avoid a Naming conflict if you've already installed a
													" different version somewhere else.
Plugin 'valloric/youcompleteme'						" auto aanvullen net als gui
Plugin 'NERDTree'									" een map explorer in vim
Plugin 'ctrlp.vim'									" control p geeft een fuzzy finder
Plugin 'airblade/vim-gitgutter'						" laat symbolen zien in ruler voor git veranderingen
Plugin 'vim-airline/vim-airline'					" status bar als epic

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Twee cmd's hier onder zorgen er voor dat nerdtree opstart als je geen file
" opent, dus gewoon als je vim opstart.
" cmd StdinReadPre * let s:std_in=1
" cmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" autocmd vimenter * NERDTree "opent nerdtree automatisch
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "sluit nerdtree automatisch af als een file afgesloten wordt

" YouCompleteMe setting
let g:ycm_min_num_of_chars_for_completion = 1

" Airline settings
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Vim editor instellingen van mij
set ruler						"zet de counter rechts onder
syntax on						"zorgt voor kleur in tekst
colo torte						"zet kleurenschema
set lines=45 columns=130		"zet schermgrootte
set number						"zet lineaal links
set tabstop=4					"zet tabs naar 4 spaties uit een vooraf gemaakt bestand
set softtabstop=4				"zet tabs in editor naar 4 spaties
set cursorline					"zet lijn over huidige regel
set wildmenu					"zet dropdown voor autocomplete
set showmatch					"laat overeekomsten zien met [{()}]
set nu							"gebruik voor relative numbers
set relativenumber				"laat relatieve nummers zien op de ruler

" Alle mapleader shortcuts, comments er onder omdat ze anders mee genomen
" worden in het commando
let mapleader = ","
noremap ,d dd
"^ om regel te verwijderen
noremap ,, :w<enter>
"^ om op te slaan
noremap ,n :NERDTreeToggle<enter>
"^ om nerdtree aan te zetten
noremap ,f :CtrlP<enter>
"^ om fuzzy finder te openen
noremap ,p ddp
"^ swap twee lines
noremap ,r <c-r>
"^ redo, ipv undo
" noremap ,h :set tabstop=8 | set expandtab | set shiftwidth=4 | set shiftround <enter>
"^ instellingen voor Haskell
" noremap ,r :set tabstop=4 | set noexpandtab | 
"^ nog niet af, terug naar standaard instellingen van vim
