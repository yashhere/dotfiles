" use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect
set nocompatible

" security
set modelines=0

" hide buffers, not close them
set hidden

" maintain undo history between sessions
set undofile
set undodir=~/.vim/undo

" fuzzy find
set path+=**
" lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase
" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

" searching
set hlsearch
set incsearch
if has("nvim")
  set inccommand=split
endif                  

" case insensitive search
set ignorecase

" ... but not when search pattern contains upper case characters
set smartcase
set infercase

" make backspace behave in a sane manner
set backspace=indent,eol,start

" enable auto indentation
set autoindent

" an indentation every four columns
set tabstop=4

" convert tabs to spaces
set expandtab

" let backspace delete indent
set softtabstop=4

" use indents of 4 spaces
set shiftwidth=4

" Do not jump to first character with page commands.
set nostartofline     

" No beeps
set noerrorbells                

" Don't use swapfile
set noswapfile           

" Don't create annoying backup files
set nobackup                  

" Set default encoding to UTF-8
set encoding=UTF-8              

" Automatically save before :next, :make etc.
set autowrite                   

" Automatically reread changed files without asking me anything
set autoread    

" Display the status line always
set laststatus=2

" Prefer Unix over Windows over OS 9 formats
set fileformats=unix,mac,dos    

" Use 'magic' patterns (extended regular expressions).
set magic                       

" remove trailing whitespaces and ^M chars
augroup ws
  au!
  autocmd FileType c,cpp,java,php,js,json,css,scss,sass,py,rb,coffee,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
augroup end

" set leader key to comma
let mapleader=" "

" coffee pasta
set clipboard^=unnamedplus

" To automatically reload upon save
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

" automatically read file again which is changed outside of vim
set autoread

" 1000 lines of history
if &history < 1000
  set history=1000
endif

" Maximum number of tab pages to be opened by the -p command line
if &tabpagemax < 50
  set tabpagemax=50
endif

" Read/write a .viminfo file
if !empty(&viminfo)
  set viminfo^=!
endif

" https://github.com/tpope/vim-sensible/issues/117
set sessionoptions-=options

" Delete comment character when joining commented lines
set formatoptions+=j

" recognize .md files as markdown files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" enable spell-checking for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" enable fzf
set rtp+=/usr/local/opt/fzf
