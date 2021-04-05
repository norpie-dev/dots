filetype off
set rtp+=~/.config/vim
call plug#begin('~/.config/vim/plugged')

" Plugin Manager
Plug 'junegunn/vim-plug'

" Utility Gui
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'

" Auto-Complete
Plug 'ycm-core/YouCompleteMe'

" Generic Programming Helpers
Plug 'Townk/vim-autoclose'
Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'

" Cool looks
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Utilities
Plug 'dhruvasagar/vim-dotoo'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'

" General Improvements
Plug 'mbbill/undotree'

call plug#end()

filetype plugin indent on

"" ALE Configuration
 let g:ale_fixers = {
\    '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'css': ['prettier'],
\   'javascript': ['prettier', 'eslint'],
\   'json': ['prettier'],
\   'less': ['prettier'],
\   'python': ['black', 'isort'],
\   'scss': ['prettier'],
\   'yaml': ['prettier'],
\}
let g:ale_linters = {
\   'css': ['prettier'],
\   'javascript': ['prettier', 'eslint'],
\   'json': ['prettier'],
\   'less': ['prettier'],
\   'python': ['flake8'],
\   'scss': ['prettier'],
\   'yaml': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1


"" YCM Configuration
let g:ycm_global_ycm_extra_conf = '/home/konsta/config/vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 1
let g:ycm_enable_diagnostic_highlighting = 0
