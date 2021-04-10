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
" Sub plugins
Plug 'onsails/lspkind-nvim'

" Generic Programming Helpers
Plug 'Townk/vim-autoclose'

" Cool looks
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Notetaking
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'

" Utilities
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'dhruvasagar/vim-dotoo'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'

" File browsing
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" General Improvements
Plug 'mbbill/undotree'

call plug#end()

filetype plugin indent on

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"UktiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

lua require'bufferline'.setup{}
