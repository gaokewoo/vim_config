syntax on

"set mouse=a

" Use spaces instead of tabs
set expandtab
" Be smart when using tabs 
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置：
set autoindent
"设置 使用 C/C++ 语言的自动缩进方式：
set cindent
"设置C/C++语言的具体缩进方式（以我的windows风格为例）：
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
"如果想在左侧显示文本的行号，可以用以下语句：
set nu

" Set to auto read when a file is changed from the outside
set autoread

" Sets how many lines of history VIM has to remember
set history=700

set hlsearch

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

colorscheme papayawhip
"colorscheme peachpuff

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set cursorline "display a line under the line of cursor on
set autochdir " 自动切换当前目录为当前文件所在的目录

set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为

set wh=50  "set the window height

set tags=/proj/MPS_DEV_REPO/xwugaok/xwugaok_rdc_s11_wp_att_gnss_linux/tags
"set csprg=/usr/bin/cscope
"cs add /proj/MPS_DEV_REPO/xwugaok/xwugaok_rdc_s11_wp_fp_linux/cscope.out /proj/MPS_DEV_REPO/xwugaok/xwugaok_rdc_s11_wp_fp_linux/
cs add /proj/MPS_DEV_REPO/xwugaok/xwugaok_rdc_s11_wp_att_gnss_linux/cscope.out /proj/MPS_DEV_REPO/xwugaok/xwugaok_rdc_s11_wp_att_gnss_linux/


"""""""""""""""config Quick Key""""""""""""
"nmap <silent> <F6> :YRShow<CR> 
nmap ys :YRShow<CR> 

"nmap <silent> <F5> :MRU<cr>
nmap mu :MRU<cr>

"trinity.vim: Build the trinity of srcexpl,taglist,
"NERD_tree to be a good IDE
"nmap <F8> :TrinityToggleAll<CR>
"nmap <F9> :TrinityToggleSourceExplorer<CR>
"nmap <F10> :TrinityToggleTagList<CR>
"nmap <F11> :TrinityToggleNERDTree<CR>
"nmap ta :TrinityToggleAll<CR>
"nmap ts :TrinityToggleSourceExplorer<CR>
"nmap tt :TrinityToggleTagList<CR>
"nmap tn :TrinityToggleNERDTree<CR>
nmap tt :TagbarToggle<CR>
nmap tn :NERDTreeToggle<CR>

nmap bm :Bookmark<CR>

"set quickfix window
nmap cw :botright cwindow<CR>

"nmap bf :BufExplorerHorizontalSplit<CR>

" 设置窗口ctrl+hjkl快速切换
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" 设置窗口ctrl+shift+上下左右键改变窗口大小
nnoremap <C-S-Left> 5<c-w>< 
nnoremap <C-S-Down> 5<c-w>-
nnoremap <C-S-Up> 5<c-w>+
nnoremap <C-S-Right> 5<c-w>>

" 设置标签alt+ctrl+左右键移动标签
nnoremap <silent> <M-S-left> :if tabpagenr() == 1\|exe "tabm ".tabpagenr("$")\|el\|exe "tabm ".(tabpagenr()-2)\|en<CR>
nnoremap <silent> <M-S-right> :if tabpagenr() == tabpagenr("$")\|tabm 0\|el\|exe "tabm ".tabpagenr()\|en<CR>

" 设置alt+左右键切换标签
nnoremap <silent> <M-left> gT
nnoremap <silent> <M-right> gt

" 设置ctrl+左右键切换缓冲区
nnoremap <silent> <C-left> :bnext<cr>
nnoremap <silent> <C-right> :bNext<cr>

set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>                                                                                                        
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>


"""""""""""""""""""""end"""""""""""""""""""


"""""""""""""""""""config AutoComplPop""""""""""""""""
" Disable AutoComplPop. 
let g:acp_enableAtStartup = 0 
" Use neocomplcache. 
let g:neocomplcache_enable_at_startup = 1 
" Use smartcase. 
let g:neocomplcache_enable_smart_case = 1 
" Use camel case completion. 
let g:neocomplcache_enable_camel_case_completion = 1 
" Use underbar completion. 
let g:neocomplcache_enable_underbar_completion = 1 
"""""""""""""""""""""end"""""""""""""""""""

"""""""""""""""""""config taglist""""""""""""""""
"let g:Tlist_Ctags_Cmd ='/usr/bin/ctags'
"""""""""""""""""""""end"""""""""""""""""""

"""""""""""""""""""config tagbar""""""""""""""""
let g:tagbar_left = 1
"""""""""""""""""""""end"""""""""""""""""""

"""""""""""""""""""config NERD_tree""""""""""""""""
let g:NERDTreeWinPos = 'right'
let NERDTreeShowBookmarks = 1
"""""""""""""""""""""end"""""""""""""""""""

""""""""""""""""config YRShow""""""""""""""
let g:yankring_window_auto_close = 0
"""""""""""""""""""""end"""""""""""""""""""


"""""""""""""""""""config MRU""""""""""""""""
let MRU_Auto_Close = 1
"""""""""""""""""""""end"""""""""""""""""""


"""""""""""""""config minibufexpl"""""""""""""""
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplMaxSize = 3
""""""""""""""""""end"""""""""""""""""""""""""" 


"""""""""""""""config bufferexplorer"""""""""""""""
"let g:bufExplorerSplitBelow=1        " Split new window below current.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerHorzSize=10          " New split window is n rows high.
"let g:bufExplorerSplitOutPathName=0  " Don't split the path and file name.
"let g:bufExplorerShowDirectories=0   " Don't show directories.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
""""""""""""""""""end"""""""""""""""""""""""""" 



