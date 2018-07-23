"This is .vimrc of SEUNG-HYUN-JEON 

"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
" vim-plug core@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
if has('vim_starting')
  set nocompatible               " be improved
endif

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "you have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "installing vim-plug..."
  echo ""
  silent !\curl -flo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd vimenter * pluginstall
endif


"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
" plugin@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"""start of plugin
call plug#begin(expand('~/.vim/plugged'))
" git 관련  필수 호환
Plug 'tpope/vim-fugitive'
"
"Themes
Plug 'NLKNguyen/papercolor-theme'

"vim-airline Themes
Plug 'itchyny/lightline.vim'
	
" vim-airline  필수 호환
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
    " for vim-airline
    let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
    let g:airline_theme='hybrid'
    set laststatus=2 " turn on bottom bar
"the-NERD_TREE 필수 호환
Plug 'scrooloose/nerdtree'
    " for The-NERD-Tree
    "열때 NERDTREE 실행
    autocmd vimenter * NERDTree
    "NERDTREE만 buffer에 남아있을 때 종료
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    "<c-n>로 NERDTREE 껏다 켠다
    map <C-n> :NERDTreeToggle<CR>
    "NERDTREE에서 파일삭제시 자동으로 buffer에서 제거
    let NERDTreeAutoDeleteBuffer = 1 
    "NERDTREE 꾸미기
    let NERDTreeShowLineNumbers=1 "NERDTREE에 행 번호 표시 
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1 "화살표 모양 바꾸기

"vim-smooth-scroll 선택 호환 
Plug 'terryma/vim-smooth-scroll'
    " for vim-smooth-scroll
     noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
     noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
     noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
     noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>
    
"auto-pairs 필수
Plug 'jiangmiao/auto-pairs'
    "for auto-pairs
    let g:AutoPairsFlyMode = 1 "flymode 사용

"surround 필수 
Plug 'tpope/vim-surround'


"snippets 필수
Plug 'honza/vim-snippets' "데이터 플러그인
Plug 'SirVer/ultisnips' "솔루션 플러그인 
    "for UltiSnips
     let g:UltiSnipsExpandTrigger="<tab>"
     let g:UltiSnipsJumpForwardTrigger="<tab>"
     let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
     let g:UltiSnipsEditSplit="vertical"

"syntastic 필수
Plug 'scrooloose/syntastic'
    "for syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

"deoplete 필수
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"for deoplete
set runtimepath+=~/.vim/plugged/deoplete.nvim/plugin/deoplete.vim/
let g:deoplete#num_processes = 1

"vim-commentary 필수    
Plug 'tpope/vim-commentary'


"""end of plugin
call plug#end()
filetype plugin indent on


"python
"deoplete-jedi
Plug 'zchee/deoplete-jedi'
"for deoplete-jedi
set runtimepath+=~/.vim/plugged/deoplete-jedi/
call deoplete#custom#source('jedi', 'debug_enabled', 1)
call deoplete#enable_logging('DEBUG', '/tmp/deoplete.log')




"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
" 다음 줄부터 플러그인이 아닌 내용을 넣으십시오@@@@@@@@@@@@@@@@@@@@@@@@
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"Theme 
" colorscheme 
set background=dark
colorscheme PaperColor
if !has('gui_running')
	  set t_Co=256
  endif
set termguicolors


"행번호 표시 필수
set number "왼쪽에 행번호 표시
set relativenumber "상대적 행번호 표시
set ruler

"대소문자 구분 필수
set ignorecase "검색시 소대문자 구분 x
set smartcase "검색시 대문자가 포함되면 자동으로 ignorecase 를 끈다

set wildmode=longest,list "ex모드 tab 설정
set autoindent "시스템클립보드 설정
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__ "파일 확장명 제외

"우분투를 제외한 vim을 위한 적용 선택
syntax on "우분투를 제외한 vim에서 색 적용
set hlsearch "우분투를 제외한 vim에서 /검색시 하이라이트
set incsearch
set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

set mousemodel=popup 

"tab키 4로 고정 선택
set tabstop=4
set softtabstop=0 
set shiftwidth=4
set expandtab "tab을 _로 구성한다

"modeline
set modeline
set modelines=10

"커서를 내릴때 화면이동을 하게되는 줄의 수 (5가 적당 999는 중앙에 고정) 선택
set scrolloff=5

"버퍼 설정
noremap <leader>p :bp<CR>
noremap <leader>n :bn<CR>
set hidden "버퍼 저장없이 이동가능
noremap <leader>c :bd<CR>

"화면이동 설정
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"encoding 설정
set enc=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast


"비쥬얼 모드
    "비쥬얼 모드로 tab한 후 계속 유지
    vmap < <gv
    vmap > >gv
"key mapping 
"<ESC>
inoremap jj <ESC>
cnoremap jj <ESC>
" Home key & End key & insert mode moving 
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
inoremap <c-h> <c-o>h
inoremap <c-j> <c-o>j
inoremap <c-k> <c-o>k
inoremap <c-l> <c-o>l
cnoremap <c-h> <c-o>h
cnoremap <c-j> <c-o>j
cnoremap <c-k> <c-o>k
cnoremap <c-l> <c-o>l

" c
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab


" python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

