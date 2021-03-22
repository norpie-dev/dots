""""""""""""""""""""""""""""""""""""
" Konsta Kuosmanen Vim Configuration
""""""""""""""""""""""""""""""""""""

source $vim_CONFIGDIR/plugins.vim
source $vim_CONFIGDIR/colours.vim
source $vim_CONFIGDIR/sets.vim
source $vim_CONFIGDIR/keybinds.vim
source $vim_CONFIGDIR/autocmd.vim

" Terminal color fix
if !has('gui_running')
      set t_Co=256
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Retarded zsh fix for cursor shape
