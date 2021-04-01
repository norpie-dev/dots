""""""""""""""""""""""""""""""""""""
" Konsta Kuosmanen Vim Configuration
""""""""""""""""""""""""""""""""""""

" Terminal color fix
if !has('gui_running')
      set t_Co=256
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Config Abstraction
source $VIMDIR/plugins.vim
source $VIMDIR/colours.vim
source $VIMDIR/sets.vim
source $VIMDIR/keybinds.vim
source $VIMDIR/autocmd.vim
