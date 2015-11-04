set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

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

"#Code syntax="vim" <<— 中文显示
set fileencodings=GB232,utf-8,gbk,ucs-bom,GB8030,default,latin,chinese
set encoding=utf-8
set fileencoding=utf-8
set langmenu=zh_CN.UTF-8


"hidden 隐藏工具栏和菜单栏
if has("gui_running") 
    "au GUIEnter * simalt ~x " 窗口启动时自动最大化 
    set guioptions-=m " 隐藏菜单栏 
    set guioptions-=T " 隐藏工具栏 
    set guioptions-=L " 隐藏左侧滚动条 
    set guioptions-=r " 隐藏右侧滚动条 
    "set guioptions-=b " 隐藏底部滚动条 
    "set showtabline=0 " 隐藏Tab栏 
endif 

" 解决菜单乱码  
"-----------------------------------  
set langmenu=zh_CN  
let $LANG = 'zh_CN.UTF-8'  
source $VIMRUNTIME/delmenu.vim  
source $VIMRUNTIME/menu.vim  
  
source $VIMRUNTIME/vimrc_example.vim  
source $VIMRUNTIME/mswin.vim  
behave mswin  
"-----------------------------------  

"vim 提示信息乱码解决方法  
"language messages zh_CN.UTF-8  
    set termencoding=chinese  
    language message zh_CN.UTF-8  


set nobackup

set showmatch " 高亮显示匹配的括号  
set history=1000  
set hlsearch " 高亮被搜索的句子  
set incsearch  
set nowrapscan   " 禁止搜索到文件两端时重新搜索  

set cursorline " 高亮显示当前行  

set expandtab   
"set noexpandtab " 不要用空格来代替制表符tab  
set tabstop=4 
set shiftwidth=4 

set number  
set numberwidth=4  

syntax enable  
syntax on  
set background=dark " light
colorscheme solarized


"NERDTree ----------------------
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）
"autocmd VimEnter * NERDTree
" 按下 F2 调出/隐藏 NERDTree
map <F2> :silent! NERDTreeToggle<CR>
"-------------------------------
"
"注释-------------------------------
"hi Comment ctermfg=darkgreen guifg=grey cterm=reverse 
"hi String ctermfg=darkred
"hi Type ctermfg=yellow
"hi Number ctermfg=darkblue
"hi Constant ctermfg=blue
"hi Statement ctermfg=darkyellow

"-注释方案2-----------------------------
hi Comment guifg=#678E9B "gui=NONE " guibg=#181719
hi SpecialComment guifg=#FF00BF guibg=#1C1D1F gui=NONE 
hi Comment ctermfg=darkgrey ctermbg=black cterm=BOLD 
hi SpecialComment ctermfg=lightred ctermbg=black cterm=BOLD 
"-----------------------------------

"设置字体---------------------------
"set guifont=courier_new:h10
set guifont=Consolas:h14
"-----------------------------------
