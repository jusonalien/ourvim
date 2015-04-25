syn on                      "语法支持

"common conf {{             通用配置
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set cursorcolumn   "十字架
" Tab键的宽度
set tabstop=4
" 统一缩进为
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
let g:indentLine_char = '┆'
let g:indentLine_color_term = 30
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldenable
set foldmethod=manual      "代码手动折叠，zfLINE
"set ruler                  "显示

"}}

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"conf for plugins {{ 插件相关的配置
"状态栏的配置 
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}
"pathogen是Vim用来管理插件的插件
"pathogen{
call pathogen#infect()
"}

"}}


""""""""""""""""""""" Vundle管理各路插件

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'Yggdroot/indentLine'
Plugin 'SQLComplete.vim'
Plugin 'pythoncomplete'
Plugin 'a.vim'
Plugin 'wincent/Command-T'
Plugin 'scrooloose/syntastic'
Plugin 'anyakichi/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'taglist.vim'
filetype plugin indent on
""""""""""""""""""""" Vundle

"""""""""""""""""""""syntastic相关
execute pathogen#infect()
let g:syntastic_python_checkers=['pylint']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"golang
"Processing... % (ctrl+c to stop)
let g:fencview_autodetect=0
set rtp+=$GOROOT/misc/vim
"""""""""""""""""""""syntastic相关

""""""""""""""""""""""""""""""Tag list (ctags)

               

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
   
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
""""""""""""""""""""""""""""""Tag list (ctags)

"""   NEADTree
"map <F3> :NERDTree<CR> 
nnoremap <F3> :exe 'NERDTreeToggle'<CR> 
""" Taglist
nnoremap <F4> :exe 'TlistToggle'<CR>

""" You complete me
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'


set completeopt=longest,menu                 " 关掉补全时的预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_collect_identifiers_from_tags_files=1 
let g:ycm_confirm_extra_conf = 0              " 不用每次提示加载.ycm_extra_conf.py文件
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0              " 关闭ycm的syntastic
"let g:ycm_filetype_whitelist = {'c' : 1, 'cpp' : 1, 'java' : 1, 'python' : 1}
let g:ycm_complete_in_comments = 1                " 评论中也应用补全
let g:ycm_min_num_of_chars_for_completion = 2     " 两个字开始补全
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_semantic_triggers =  {'c' : ['->', '.'], 'objc' : ['->', '.'], 'ocaml' : ['.', '#'], 'cpp,objcpp' : ['->', '.', '::'], 'php' : ['->', '::'], 'cs,java,javascript,vim,coffee,python,scala,go' : ['.'], 'ruby' : ['.', '::']}
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

""""---------------------------颜色
syntax enable

syntax on

set nu
set t_Co=256
set background=dark
colorscheme solarized


"""""--------------------------------------------------个人配置
"""""""""""""""""""" 自动补全
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {<CR>}<ESC>O
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
function! ClosePair(char)
if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction
filetype plugin indent on 
set completeopt=longest,menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 

autocmd BufNewFile *.cpp,*.cc,*.[ch],*.sh,*.java,*.py,*.tex exec":call SetTitle()" 
autocmd BufNewFile *.cxx exec":call SetACM()"
func! SetACM()
      call setline(1,          "/***********************************************************") 
		call append(line("."),   "	> OS     : Linux 3.13.0-32-generic (Ubuntu 14.04)") 
		call append(line(".")+1, "	> Author : jusonalien ") 
		call append(line(".")+2, "	> Mail   : jusonalien@qq.com ") 
		call append(line(".")+3, "	> Time   : ".strftime("%c")) 
		call append(line(".")+4, " **********************************************************/")      
      call append(line(".")+5, "#include <iostream>")
		call append(line(".")+6, "#include <cstdio>")
      call append(line(".")+7, "#include <string>")
      call append(line(".")+8, "#include <cstring>")
		call append(line(".")+9, "using namespace std;")
		call append(line(".")+10, "")
      call append(line(".")+11, "int main(){")
      call append(line(".")+12, "")
      call append(line(".")+13, "")
      call append(line(".")+14, "return 0;")
      call append(line(".")+15, "}")

endfunc
func! SetTitle() 
	"如果文件类型为.sh文件 
	if &filetype == 'sh' 
      call setline(1,"\#!/bin/bash") 
      call append(line("."),  "\#****************************************************") 
		call append(line(".")+1, "\#	> OS     : Linux 3.13.0-32-generic (Ubuntu 14.04)")  
		call append(line(".")+2, "\#	> Author : jusonalien ")                            
		call append(line(".")+3, "\#	> Mail   : jusonalien@qq.com ")              
	   call append(line(".")+4, "\#	> Time   : ".strftime("%c"))               
		call append(line(".")+5, "\#****************************************************") 
		call append(line(".")+6, "")
		
		 
    elseif &filetype == 'python'
      call setline(1,"#!/usr/bin/env python")
      call append(line("."),"# coding=utf-8")
      call append(line(".")+1, "#********************************************************") 
		call append(line(".")+2, "#	> OS     : Linux 3.13.0-32-generic (Ubuntu 14.04)") 
		call append(line(".")+3, "#	> Author : jusonalien ") 
		call append(line(".")+4, "#	> Mail   : jusonalien@qq.com ") 
		call append(line(".")+5, "#	> Time   : ".strftime("%c")) 
		call append(line(".")+6, "#********************************************************") 
		call append(line(".")+7, "")
		
           
		
"    elseif &filetype == 'mkd'
"        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
     	
      else 

		call setline(1,          "/***********************************************************") 
		call append(line("."),   "	> OS     : Linux 3.13.0-32-generic (Ubuntu 14.04)") 
		call append(line(".")+1, "	> Author : jusonalien ") 
		call append(line(".")+2, "	> Mail   : jusonalien@qq.com ") 
		call append(line(".")+3, "	> Time   : ".strftime("%c")) 
		call append(line(".")+4, " **********************************************************/") 
      
                
	
	if &filetype == 'cpp'
                call append(line(".")+5, "#include <iostream>")
		call append(line(".")+6, "#include <cstdio>")
                call append(line(".")+7, "#include <string>")
                call append(line(".")+8, "#include <cstring>")
		call append(line(".")+9, "using namespace std;")
		call append(line(".")+10, "")
                call append(line(".")+11, "int main()")
      call append(line(".")+12, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
"	if &filetype == 'java'
"		call append(line(".")+6,"public class ".expand("%"))
"		call append(line(".")+7,"")
"	endif
endif
	"新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile * normal G

"C，C++ 按F5编译运行
map <F5> :call CompileRunGcc()<CR>
"autocmd FileType tex map <F6> :!pdflatex %<CR>
"autocmd FileType tex map <F5> :!evince %<.pdf<CR>
func! CompileRunGcc()
	exec "w"
       
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    elseif &filetype == 'tex' 
        exec "!evince %<.pdf "
    elseif &filetype == 'plaintex'
        exec "!evince %<.pdf "
    
	endif
endfunc

"C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
	exec "w"
	exec "!g++ % -g -o %<"
	exec "!gdb ./%<"
endfunc


"代码格式优化化

map <F6> :call FormartSrc()<CR><CR>

"定义FormartSrc()
func! FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -p -P -U -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi  -p -P -U -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java -p -P -U --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'tex'
        exec "!pdflatex %<.tex"
        return
    elseif &filetype == 'plaintex'
        exec "!pdflatex %<.tex"
        
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc
map <C-A> : exec "!cat % \|xsel -b "<CR>
map <F2> : A <CR>

" markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""""" 按退格键时判断当前光标前一个字符，如果是左括号，则删除对应的右括号以及括号中间的内容
""function! RemovePairs()
""    let l:line = getline(".")
""    let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符
"" 
""    if index(["(", "[", "{"], l:previous_char) != -1
""        let l:original_pos = getpos(".")
""        execute "normal %"
""        let l:new_pos = getpos(".")
""        " 如果没有匹配的右括号
""        if l:original_pos == l:new_pos
""            execute "normal! a\<BS>"
""            return
""        end
""        let l:line2 = getline(".")
""        if len(l:line2) == col(".")
""            " 如果右括号是当前行最后一个字符
""            execute "normal! v%xa"
""        else
""            " 如果右括号不是当前行最后一个字符
""            execute "normal! v%xi"
""        end
"" 
""    else
""        execute "normal! a\<BS>"
""    end
""endfunction
""" 用退格键删除一个左括号时同时删除对应的右括号
""inoremap <BS> <ESC>:call RemovePairs()<CR>a
