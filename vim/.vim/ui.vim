" syntax highlighting
syntax on
set synmaxcol=512
filetype plugin on

" show line numbers
set number

" Show the line and column numbers of the cursor.
set ruler

" Continue comment marker in new lines.
set formatoptions+=o

" Hard-wrap long lines as you type them.
set textwidth=0

" no line wrapping
set nowrap

" Enable modeline.
set modeline

" Cursor keys in insert mode.
set esckeys

" Set line-spacing to minimum.
set linespace=0

" Prevents inserting two spaces after punctuation on a join (J)
set nojoinspaces

" Horizontal split below current.
set splitbelow

" Vertical split to right of current.
set splitright

" Show next 3 lines while scrolling.
if !&scrolloff
  set scrolloff=3               
endif

" Show next 5 columns while side-scrolling.
if !&sidescrolloff
  set sidescrolloff=5           
endif

" highlight cursor
set cursorline

set display+=lastline

" Show me what I'm typing
set showcmd

" Show current mode.
set noshowmode

" show matching brackets/parenthesis
set showmatch

" disable startup message
set shortmess+=I

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" split style
set fillchars=vert:+

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" no folding
set nofoldenable
set foldlevel=99
set foldminlines=99
set foldlevelstart=99

" tree style file explorer
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=25

" shell is usually dark
set background=dark
