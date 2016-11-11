" Most important remaps. Include first.
"imap jj <esc>l
noremap ; :
noremap : ;

"set t_Co=16               "Terminal shows 256 color
map <F3> ;source ~/.vimrc<cr>

call plug#begin()
"Plug 'kien/ctrlp.vim'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdcommenter'
Plug 'nelstrom/vim-visual-star-search'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'tpope/vim-abolish'
Plug 'scrooloose/syntastic'
Plug 'sudar/vim-arduino-syntax'
Plug 'ervandew/supertab' 
" Allows inserting <tab> without autocompleting
Plug 'yaroot/vissort'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/vim-easy-align'
Plug 'easymotion/vim-easymotion'
Plug 'ternjs/tern_for_vim'
Plug 'pangloss/vim-javascript'
Plug 'hdima/python-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'myusuf3/numbers.vim'
Plug 'mileszs/ack.vim'
Plug 'fholgado/minibufexpl.vim'
Plug 'vim-scripts/The-NERD-tree'
Plug 'fs111/pydoc.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'jiangmiao/auto-pairs'
Plug 'garbas/vim-snipmate'
Plug 'SirVer/ultisnips',{ 'on': [] } 
Plug 'Valloric/YouCompleteMe', { 'on': [], 'do': 'python install.py' }
Plug 'honza/vim-snippets'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'spf13/vim-autoclose'
Plug 'michaeljsmith/vim-indent-object'
"""""   UNUSED PLUGINS
"Plug 'edsono/vim-matchit'
"Plug 'tpope/vim-commentary'
"Plug 'vim-scripts/TaskList.vim'
"Plug 'vim-scripts/Gundo'
"Plug 'davidhalter/jedi-vim'
"Plug 'xolox/vim-misc'
"Plug 'vim-scripts/closetag.vim'
"Plug 'Shougo/neocomplete.vim'
"Plug 'ervandew/supertab'
"Plug 'kien/ctrlp.vim'
"Plug 'scrooloose/nerdcommenter'
"Plug 'xolox/vim-easytags'
"Plug 'wincent/Command-T'
call plug#end()


""" vim-javascript
let g:javascript_enable_domhtmlcss = 1
""" RainbowParentheses
let g:rbpt_loadcmd_toggle = 1
""" Syntastic
let g:syntastic_python_checkers = ['flake8', 'pyflakes', 'python']
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_checkers = ['jscs', 'jshint']
""" Syntax option for Python
let python_highlight_all = 1
""" youcompleteme
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_log_level = 'debug'
if has('unix')
    let g:ycm_path_to_python_interpreter = '/usr/bin/python'
elseif has('win32') || has('win64')
    let g:ycm_path_to_python_interpreter = 'C:\Python27\python.exe'
endif
let g:ycm_key_list_select_completion = ['<tab>']
let g:ycm_autoclose_preview_window_after_completion=1
""" vim-airline"
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = '|'
"let g:airline#extensions#tabline#left_alt_sep = '|'
""" Solarized Colorscheme
"highlight Normal ctermbg=black
let g:solarized_italic=0
let g:solarized_termcolors=16
let g:solarized_degrade=0
let g:solarized_bold = 0
let g:solarized_contrast = "normal"
let g:solarized_visibility = "normal"

""" General Vim Setting
set nobin
"set display=uhex "show unprintable characters as hex
colorscheme solarized
set background=dark

set noswapfile
set nocompatible           
"Required for plugins
set completeopt=menu
set pastetoggle=<F10>
set autochdir 
"automatically switches pwd to currently opened file"
set number
set smartindent
set tabstop=4
set tw=74
set expandtab
set shiftwidth=4
set softtabstop=4
set history=1000
set nobackup
set nowritebackup
set directory=d:/tmp
set foldmethod=marker
set foldnestmax=10     
set foldlevel=99      
set foldcolumn=3
set timeoutlen=500 
" map leader delay
set virtualedit=block 
" move to blank spaces in visual mode
set lazyredraw 
"When executing macro does not update constantly

set ignorecase
set smartcase
set scrolloff=3
set ruler
set wildmenu   
"command-line completion
set wildmode=list:longest
set nohlsearch 
"Highlight off
set hlsearch 
"Highlight on
set incsearch
set formatoptions=qrn1
set laststatus=2
set hidden
set shortmess=aoOstTWAI
set title
set autoread
set backspace=indent,eol,start
set nowrap
set linebreak 
" When wrapping preserves words
set nojoinspaces

set showfulltag
set showcmd

set report=0
set showtabline=0
set noshowmode

set helpheight=12
set winminheight=0
set sidescroll=15

set nostartofline
set autoindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Key map shortcut hotkey
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
noremap \ ,
let g:mapleader=","
" vim easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
""" syntastic
"nnoremap <C-F9> ;SyntasticCheck<cr>
"numbers.vim; toggles relative numbers
nnoremap <f1> ;numberstoggle<cr>
"nnoremap <f4> :numbersonoff<cr>
"NERD Tree
map <leader>t ;NERDTreeToggle<CR>
"Ack
nmap <leader>a <Esc>:Ack! 
"MiniBuffExpl"
nnoremap <F12> ;MBEOpen<CR>
" Snipmate with YCM
" For more snipmate keys see map_keys.vim
"look for jump and trigger keys
imap GG <Plug>snipMateNextOrTrigger 
imap <c-y> <Plug>snipMateNextOrTrigger 
vmap GG <Plug>snipMateNextOrTrigger 
vmap <c-y> <Plug>snipMateNextOrTrigger 


" Easy Motion
map <leader>f <Plug>(easymotion-f)
map <leader>t <Plug>(easymotion-t)
map <leader>F <Plug>(easymotion-F)
map <leader>T <Plug>(easymotion-T)
map <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_smartcase = 1

""" NerdCommenter
nmap <leader>u <Plug>NERDCommenterUncomment
xmap <leader>u <Plug>NERDCommenterUncomment
nmap <leader>r <Plug>NERDCommenterComment
xmap <leader>r <Plug>NERDCommenterComment
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCommentEmptyLines = 1
let g:NERDCompactSexyComs = 1
let g:NERDSpaceDelims = 1

""" Spell checking
nmap <leader>s ;set spell!<CR>
set spelllang=en_us


nmap <silent> <leader>v ;e $MYVIMRC<CR>

"nnoremap J mzJ`z
""" Joining with J doesn't move cursor
"nnoremap n nzz
""" Centers screen after search
"nnoremap } }zz

nnoremap j gj
nnoremap k gk
" Does not skip lines when moving with set wrap

nmap <F9> za

nnoremap <c-down> :m .+1<CR>==
nnoremap <c-up> :m .-2<CR>==
inoremap <c-down> <Esc>:m .+1<CR>==gi
inoremap <c-up> <Esc>:m .-2<CR>==gi
vnoremap <c-down> :m '>+1<CR>gv=gv
vnoremap <c-up> :m '<-2<CR>gv=gv

" Jumping to matching indentation with alt, alt.
nnoremap <M-.> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%<' . line('.') . 'l\S', 'be')<CR>
nnoremap <M-,> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%>' . line('.') . 'l\S', 'e')<CR>

imap <tab> <c-n>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

noremap <Up> gk
noremap <Down> gj
"map <C-n> :cn<cr>
"map <C-p> :cp<cr>
map <C-n> ;bn<cr>
map <C-p> ;bp<cr>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

map H ^
map L $
imap JJK <esc>xepa
imap JJL <esc>x$pa
imap JJJ <esc>$a
imap JJo <esc>$o
imap JJ) <esc>f)a
imap JJ" <esc>f"a
imap JJ' <esc>f'a
imap JJ] <esc>f]a

nnoremap ' `
nnoremap ` '
"noremap x "_x
"noremap X "_X

""" vim related doc
" to find what key sequence the terminal is actually receiving
" <in shell> sed -n l
" Type the key sequence, if output is ^[j
" in Vim map <Esc>j command, ^[ is translated by <Esc> in vim
"mapc : clears all previously mapped keys

if has("autocmd")
    augroup myvimrchooks
        au!
        autocmd bufwritepost .vimrc source ~/.vimrc
    augroup END
endif
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons
au Syntax * RainbowParenthesesLoadRound


"""" Remembering folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
"
"""" SimpylFold for python
"autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
"autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
"
"""" Lazy loading of some vim plugin
augroup load_lazy
    autocmd!
    autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
                \| autocmd! load_lazy
augroup END
""
"""" Troubleshooting aggregates
"" UltiSnips takes over <tab> key
"" vi /root/.vim/plugged/ultisnips/autoload/UltiSnips/map_keys.vim
"" replace <tab> key with GG
"" source /root/.vim/plugged/vim-snipmate/after/plugin/snipMate.vim
"
"
filetype on
filetype plugin on
filetype indent on
