set runtimepath+='~/.vim/plugins'

if empty(glob('~/.vim/plugins/autoload/plug.vim'))
  silent call system('mkdir -p ~/.vim/plugins/autoload')
  silent call system('mkdir -p ~/.vim/{bundle,cache,undo,backups,swaps}')
  silent call system('curl -fLo ~/.vim/plugins/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup end
endif

execute 'source  ~/.vim/plugins/autoload/plug.vim'

call plug#begin('~/.vim/plugins/plugged')

" colors
" Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
" general
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

" programming
Plug 'scrooloose/nerdcommenter'

" stylize
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'chrisbra/colorizer'
Plug 'powerman/vim-plugin-AnsiEsc'

" multiplexer integration
Plug 'roxma/vim-tmux-clipboard'
Plug 'christoomey/vim-tmux-navigator'
Plug 'melonmanchan/vim-tmux-resizer'

call plug#end()
