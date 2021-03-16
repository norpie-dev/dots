filetype off
set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin('~/.config/vim/bundle')

" Plugin Manager
Plugin 'VundleVim/Vundle.vim'

" Utility Gui
Plugin 'preservim/tagbar'
Plugin 'preservim/nerdtree'

" Auto-Complete
Plugin 'ycm-core/YouCompleteMe'

" Generic Programming Helpers
Plugin 'Townk/vim-autoclose'
Plugin 'vim-syntastic/syntastic'
Plugin 'dense-analysis/ale'

" Cool looks
Plugin 'ryanoasis/vim-devicons'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/goyo.vim'

" Colorschemes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'sickill/vim-monokai'

" General Improvements
Plugin 'mbbill/undotree'

call vundle#end()

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

"" YCM Configuration
let g:ycm_global_ycm_extra_conf = '/home/konsta/config/vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
