set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"����Ĭ��Ŀ¼
if getcwd()=="C:\\Vim\\Vim\\vim73"
  cd C:\Users\CJlegend\Desktop\JekyllBlog\localJekyll\_posts
endif

"��ѧvim���������ļ��Ժ�������
colorscheme evening
set cursorline
set shiftwidth=2
set expandtab
set number
compiler gcc
"����FP�Ŀ�ݼ�����<F2>����<F9>����<C-F9>����<F12>�л���ǩ<F3>�±�ǩ��<F4>����GDB����
imap <C-S> <esc><C-S>a
nmap <F2> :w<CR>
imap <F2> <ESC><F2>a
nmap <F9> <F2>:!g++.exe % -g -Wall -o %< >error 2>&1 <CR>:cfile error<CR>:cw<CR>
imap <F9> <ESC><F9>
nmap <C-F9> <F9>:ccl<CR>:!%< <CR> 
imap <C-F9> <ESC><C-F9>
nmap <F3> :tabnew 
imap <F3> <ESC><F3>
nmap <F4> :!gdb %< <CR>
imap <F4> <ESC><F4>
nmap <F12> :silent !ctags -R --c++-kinds=+px --fields=+iaS --extra=+q . <CR>
imap <F12> <ESC><F12>a
sy on
set cindent
set guioptions-=m
set guioptions-=T
set nobackup

highlight Pmenu    guibg=darkgrey  guifg=black
highlight PmenuSel guibg=lightgrey guifg=black
set tags+=C:/ctags58/cpp_src/tags
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " ��ʾ���������б�
let OmniCpp_MayCompleteDot = 1   " ���� .  ���Զ���ȫ
let OmniCpp_MayCompleteArrow = 1 " ���� -> ���Զ���ȫ
let OmniCpp_MayCompleteScope = 1 " ���� :: ���Զ���ȫ
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" �Զ��رղ�ȫ����
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest

"set enc=utf8 
set fencs=utf8,gbk,gb2312,gb18030,cp936 
