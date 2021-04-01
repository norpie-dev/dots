" Lets
let mapleader="<"

" Custom aliases
cnoreabbrev W w !sudo tee %

" Disable arrows
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" Custom Plugin Mappings
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>g :Goyo<CR>

" Ale
nmap gd :YcmCompleter GoToDefinition<CR>
nmap gb <C-o>


