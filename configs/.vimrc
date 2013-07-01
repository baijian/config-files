colorscheme evening

"let vim remember the location you edit last time
autocmd BufReadPost *
    \ if line("'\"")>0&&line("'\"")<=line("$") |
        \   exe "normal g'\"" |
    \ endif
"it can use mouse copy now 
set mouse=
"not fit for vi
set nocp
set nu
set ru
set hls
set is
syntax on
set backspace=indent,eol,start
"set whichwrap=b,s,<,>,[,]
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
set ambiwidth=double
filetype plugin indent on

set sw=4
set ts=4
set et
set smarttab
"set spell

"set tw=80
set lbr
set fo+=mB 

set sm
set cin
"set paste     
"set nopaste
"set cino=:0g0t0(sus
set ai

set wildmenu
set selection=inclusive
"colo torte

"set mousemodel=popup
"set nowrap
"set guioptions+=b
set wrap
"set cursorline
filetype on

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

""""""""""""""""""""""""""""""""""""""""""""""
" Tag list (ctags)

""""""""""""""""""""""""""""""""""""""""""""""
 if has("unix")
     let Tlist_Ctags_Cmd = "/usr/bin/ctags"
 endif
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "name"
let Tlist_File_Auto_Close = 1
let Tlist_Process_File_Always = 1
"let Tlist_WinHeight = 20
"let Tlist_WinWidth = 20
"let Tlist_Use_Horiz_Window = 1
nnoremap <silent><F4> :TlistToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""
" NERD_tree 
"
""""""""""""""""""""""""""""""""""""""""""""""
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
let NERDTreeWinSize = 8


""""""""""""""""""""""""""""""""""""""""""""""
" winmanager
" 
""""""""""""""""""""""""""""""""""""""""""""""
"let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer" ",:crtl+n
"let g:winManagerWindowLayout = "NERDTree|TagList,BufExplorer"
let g:winManagerWindowLayout = "NERDTree"
"let g:winManagerWindowLayout = "NERDTree|TagList"
let g:winManagerWidth = 25
nmap <silent><F2> :WMToggle<CR>
let g:AutoOpenWinManager = 0

" vim 背景透明
hi Normal ctermbg=None ctermfg=White

"高亮 行显示
"set cursorline
"hi CursorLine cterm=None ctermbg=grey ctermfg=None

""高亮列显示
"set cursorcolumn
"hi CursorColumn cterm=None ctermbg=grey ctermfg=None
"
""注释 颜色
"hi Comment cterm=None ctermbg=white ctermfg=black
"
""显示状态栏
"set laststatus=2
"hi StatusLine cterm=bold ctermfg=yellow ctermbg=blue
"function! CurDir()
"    let curdir = substitute(getcwd(), $HOME, "~", "g")
"    return curdir
"endfunction
"set statusline=[%n]\ %f%m%r%h\ \|\ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\ 
"
"

