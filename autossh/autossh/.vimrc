set nocompatible
set syntax=on
set noeb 
set confirm
set autoindent 
set cindent
set tabstop=4 
set softtabstop=4  
set shiftwidth=4 
set noexpandtab
set smarttab
set number
set history=1000
set nobackup  
set noswapfile 
set ignorecase 
set hlsearch  
set incsearch 
set gdefault
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 
set langmenu=zh_CN.UTF-8  
set helplang=cn  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}  
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] 
set laststatus=2  
set ruler
set cmdheight=2
filetype on
filetype plugin on
filetype indent on
set iskeyword+=_,$,@,%,#,- 
set linespace=0
set wildmenu
set backspace=2
set whichwrap+=<,>,h,l
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
set report=0
set shortmess=atI 
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch 
set matchtime=5
set scrolloff=3 
set smartindent
if has("autocmd")  
   autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number  
   autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o-->  
   autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o/*<ESC>'>o*/  
   autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100  
   autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim  
   autocmd BufReadPost *  
      \ if line("'\"") > 0 && line("'\"") <= line("$") |  
      \   exe "normal g`\"" |  
      \ endif  
endif " has("autocmd") 


"c programe make
"map <F5> :call CompileRunGcc()<CR>  
"func! CompileRunGcc()  
"exec "w"  
"exec "!gcc % -o %<"  
"exec "! ./%<"  
"endfunc  


"c++ programe make
"map <F6> :call CompileRunGpp()<CR>  
"func! CompileRunGpp()  
"exec "w"  
"exec "!g++ % -o %<"  
"exec "! ./%<"  
"endfunc

set encoding=utf-8  
function! SetFileEncodings(encodings)  
    let b:myfileencodingsbak=&fileencodings  
    let &fileencodings=a:encodings  
endfunction  
function! RestoreFileEncodings()  
    let &fileencodings=b:myfileencodingsbak  
    unlet b:myfileencodingsbak  
endfunction  
  
au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single  
au BufReadPost *.nfo call RestoreFileEncodings()  

au BufRead,BufNewFile *  setfiletype txt  

set foldenable  
set foldmethod=manual  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 

let g:miniBufExplMapWindowNavVim = 1  
let g:miniBufExplMapWindowNavArrows = 1  
let g:miniBufExplMapCTabSwitchBufs = 1  
let g:miniBufExplModSelTarget = 1 
  
