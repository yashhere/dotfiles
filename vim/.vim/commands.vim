" json pretty print
function! JSONify()
  %!python -mjson.tool
  set syntax=json
endfunction
command J :call JSONify()
nnoremap <silent> <leader>j <esc>:call JSONify()<cr><esc>

" make inline more readable
function! UnMinify( )
    %s/{\ze[^\r\n]/{\r/g
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction
command UnMinify :call UnMinify()
nnoremap <silent> <leader>u <esc>:call UnMinify()<cr><esc>

" remove highlighting
nnoremap <silent> <esc><esc> <esc>:nohlsearch<cr><esc>

" remove trailing white space
command Nows :%s/\s\+$//

" remove blank lines
command Nobl :g/^\s*$/d

" toggle spellcheck
command Spell :setlocal spell! spell?
nnoremap <silent> <leader>s :setlocal spell! spell?

" make current buffer executable
command Chmodx :!chmod a+x %

" fix syntax highlighting
command FixSyntax :syntax sync fromstart

" pseudo tail functionality
command Tail :set autoread | au CursorHold * checktime | call feedkeys("G")

" let's make some textmode art!
function! AsciiMode()
  e ++enc=cp850
  set nu!
  set virtualedit=all
  set colorcolumn=80
endfunction
command Ascii :call AsciiMode()

" Search and Replace
" nmap <Leader>s :%s//g<Left><Left>

" Buffer handling
nmap L :let &number=1-&number<CR>
nmap <leader>l :bnext<CR>
nmap <c-h> :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
nmap <leader>0 :set invnumber<CR>

" Recover from accidental Ctrl-U
inoremap <C-U> <C-G>u<C-U>

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>