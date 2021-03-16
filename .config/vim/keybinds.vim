" Lets
let mapleader="<"

" Custom aliases
cnoreabbrev W w !sudo tee %

" Custom mappings
nmap sh :vertical-resize -1<CR>
nmap sl :vertical-resize +1<CR>
nmap sj :resize +1<CR>
nmap sk :resize -1<CR>

" Move to window
nmap mh <C-w>h
nmap ml <C-w>l
nmap mj <C-w>j
nmap mk <C-w>k

" Move to tab
nmap zl :tabn<CR>
nmap zh :tabp<CR>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif

" Custom Plugin Mappings
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>g :Goyo<CR>

