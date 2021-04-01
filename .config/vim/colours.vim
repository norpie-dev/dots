" Terminal color fix
if !has('gui_running')
      set t_Co=256
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Colorscheme Configuration
colorscheme molokai 
set background=dark

" Lightline Configuration
set laststatus=2
set noshowmode
let g:lightline = {'colorscheme': 'wombat',}
