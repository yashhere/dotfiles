" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

" linting
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✘ '
let g:ale_sign_warning = '⚠ '
"let g:ale_open_list = 1
"let g:ale_lint_on_text_changed = 'never'
highlight ALEErrorSign ctermbg=0 ctermfg=magenta
let g:ale_fix_on_save = 1

" file browser
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:webdevicons_enable_nerdtree = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['_site']

" Gist-vim configuration
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1

" disable folding
let g:vim_json_syntax_conceal = 0

" verticle diffs
set diffopt+=vertical

" close if final buffer is netrw or the quickfix
augroup finalcountdown
  au!
  "autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) || &buftype == 'quickfix' | q | endif
  "nmap - :Lexplore<cr>
  nmap - :NERDTreeToggle<cr>
augroup END

" GitGutter
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_max_signs = 1500
let g:gitgutter_diff_args = '-w'
" custom symbols
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = ':'
" color overrrides
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green ctermbg=0
highlight GitGutterChange ctermfg=yellow ctermbg=0
highlight GitGutterDelete ctermfg=red ctermbg=0
highlight GitGutterChangeDelete ctermfg=red ctermbg=0

"""""""""""""" Nerd Commentor """""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" omnifuncs
augroup omnifuncs
  au!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
augroup end

" completions
let b:vcm_tab_complete = 'omni'
set omnifunc=syntaxcomplete#Complete
" select the completion with enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" close preview on completion complete
augroup completionhide
  au!
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
augroup end

" lightline
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

augroup alestatus
  au!
  autocmd User ALELint call lightline#update()
augroup end

" Theme
colorscheme dracula
highlight SignColumn guibg=#272822
let g:rehash256 = 1

