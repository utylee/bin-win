set nocompatible
source $VIMRUNTIME/vimrc_example.vim
" 버전 업그레이드 후 Ctrl + F 동작이 find가 되어버려서 고칩니다
"source $VIMRUNTIME/mswin.vim
behave mswin

set hidden

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"set runtimepath=~/.vim
"==================================================================
"set nocompatible
"filetype off
"set rtp+=~/vimfiles/bundle/vundle
"call vundle#rc('~/vimfiles/bundle')
"Plugin 'gmarik/vundle'
""Plugin 'The-NERD-tree'
"Plugin 'jistr/vim-nerdtree-tabs' "닫을때tree도같이닫아줌
"
"Plugin 'AutoComplPop' "단어자동완성
""Plugin 'SuperTab'
"Plugin 'SuperTab-continued.'
"Plugin 'a.vim' "헤더-소스 전환
"Plugin 'bufexplorer.zip' "파일의 History
""Plugin 'qtpy.vim'
"Plugin 'flazz/vim-colorschemes'
""Plugin 'Python-mode-klen'
""Plugin 'cqml.vim'
""Plugin 'number-marks'
""Plugin 'qt2vimsyntax'
"filetype plugin indent on
"syntax on
"
""autocmd VimEnter * if &filetype !=# 'gitcommit'| NERDTree | wincmd p | endif 
""autocmd BufEnter * if &filetype !=# 'gitcommit'| NERDTree | wincmd p | endif
"autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror
"
"autocmd VimEnter * wincmd w
"
"let g:NERDTreeWinPos = "right"
"let g:NERDTreeWinSize = 36
"let g:nerdtree_tabs_open_on_gui_startup=1

"==================================================================

execute pathogen#infect()

filetype plugin indent on
syntax on

set laststatus=2
let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'fancy'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"let g:jedi#auto_initialization = 1 
"let g:jedi#squelch_py_warning = 1

set noundofile
set number
set cul
set ignorecase
set shiftwidth=4
set softtabstop=4
set nobackup
set noswapfile
"no equalalways or equalalways --> split 화면에서 사이즈 유즈 관련 세팅
set noea 

" 파이썬에서 자꾸 indent 에러 등의 호환 문제가 발생하여 추가합니다. tab을
" 스페이스로 채워주는 명령입니다.
" 매번 수동으로 적용은 :retab 을 실행하면 됩니다
set expandtab


" 현재 파일의 디렉토리로 이동
set autochdir
" 만약 플러긴에서 문제가 생긴다면 아래대안을 사용할 것
"nnoremap ,cd :cd %:p:h<CR> 

if has("gui_running")
	set lines=35
	set columns=100
	"set lines=48
	"set columns=114
	au GUIEnter * winpos 500 50
endif

set guioptions -=T
set guioptions -=m
set noshellslash
map <F5> : !python %<CR>
map <F7> :NERDTreeTabsToggle<CR>
map <F2> :NERDTreeToggle<CR>
map <F1> :e $myvimrc<CR>
map <A-3> :tabnext<CR>
map <A-4> :tabprevious<CR>
map <F3> :cn<CR>
map <F4> :cp<CR>
"ex) :ccl<CR>       "Close the search result windows

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
"map <C-T> :tabnew<CR>:wincmd w<CR>

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|avi|mkv|mov|mp4|wma|xlsx|mp3|ini|doc|docx|un|bak)$',
\}



" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
"let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>f :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>t :CtrlPMRU<cr>
nmap <leader>m :CtrlPMixed<cr>
nmap <leader>q :bd!<cr>
nmap <leader>1 :e $MYVIMRC<CR>

"nmap <leader>bs :CtrlPMRU<cr>
let g:ctrlp_match_window = 'max:12'

" Split size change
nmap <leader>- :resize -5<cr>
nmap <leader>= :resize +5<cr>

"d로 삭제시에 레지스터로 복사되는 것을 금지합니다
"noremap d "_d
"noremap dd "_dd
"noremap p "0p

"colorscheme molokai "oreilly jellybeans sweyla1 
colorscheme monokai "oreilly jellybeans sweyla1 
colorscheme solarized_sd_utylee "oreilly jellybeans sweyla1 
"colorscheme oreilly "oreilly jellybeans sweyla1 

"let python_no_builtin_highlight = 1  
let g:molokai_original = 1
"set air-line theme {dark, molokai, ...}
let g:airline_theme='molokai'

"autocmd BufNewFile,BufRead *.qml so c:\vim\vim74\ftplugin\qml.vim
autocmd BufNewFile,BufRead *.qml setf qml 

set langmenu=utf8
lang mes en_US 
"set langmenu=en_US.UTF-8
set tabstop=4
"cd c:\_GoogleDrive\__시스템트레이딩\
set encoding=utf8
set fileencodings=utf-8,cp949
"set langmenu=cp949
"set guifont=나눔고딕코딩:h12:cHANGEUL
"set guifontwide=나눔고딕코딩:h12:cHANGEUL
"set guifont=Lucida\ Console:h11:cDEFAULT
"set guifont=Consolas:h10.15:cDEFAULT
"set guifont=Consolas:h10.2:cANSI
"set guifont=D2Coding:h13:cANSI
"set guifont=GohuFont:h14:cANSI
"set guifont=Input\ Mono:h12:cDEFAULT

"set guifont=InputMonoNarrow_Light:h12:cDEFAULT
"set guifont=Cascadia\ Mono\ PL:h14:cDEFAULT
set guifont=Cascadia\ Mono\ PL\ SemiLight:h14:cDEFAULT
"아래옵션이 오히려 SemiLight 폰트를 로딩못하게 합니다
"set renderoptions=type:directx,gamma:1.25,contrast:0.25,level:0.75,geom:1,renmode:5,taamode:1

"set guifont=Input:h12:cDEFAULT
"set guifont=Input:h12:cANSI
"set guifont=Imma2:h12:cDEFAULT
"set guifont=Terminus:h13:cANSI
"set guifontwide=나눔고딕코딩:h13.8:cDEFAULT
"set guifontwide=Inconsolata\ for\ Powerline:h14:cDEFAULT
"set renderoptions=type:directx,gamma:1.0,contrast:0.2,level:1.0,geom:1,renmode:5,taamode:1
"cd c:\_GoogleDrive\
"cd c:\Users\utylee\00-projects
"cd c:\Users\seoru\00-projects\00-python
cd c:\Users\utylee\
