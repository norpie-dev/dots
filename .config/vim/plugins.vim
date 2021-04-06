filetype off
set rtp+=~/.config/vim
call plug#begin('~/.config/vim/plugged')

" Plugin Manager
Plug 'junegunn/vim-plug'

" Utility Gui
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'

" Auto-Complete
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Generic Programming Helpers
Plug 'Townk/vim-autoclose'

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
