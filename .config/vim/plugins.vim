filetype off
set rtp+=~/.config/vim
call plug#begin('~/.config/vim/plugged')

" Vim Lua dependancies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

" Plugin Manager
Plug 'junegunn/vim-plug'

" Utility Gui
Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'

" Auto-Complete
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
" Auto-Complete - Sub plugins
Plug 'onsails/lspkind-nvim'

" Generic Programming Helpers
Plug 'Townk/vim-autoclose'

" Cool looks
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'itchyny/lightline.vim'
Plug 'lukas-reineke/indent-blankline.nvim'

" Writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Notetaking
Plug 'lervag/vimtex'
"Plug 'sirver/ultisnips' " TODO: FIX THIS

" Utilities
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'

" File browsing
Plug 'nvim-telescope/telescope.nvim'

" General Improvements
Plug 'mbbill/undotree'

call plug#end()

filetype plugin indent on

" Vimtex
"let g:tex_flavor='latex'
"let g:vimtex_view_method='zathura'
"let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'

" UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

lua require'bufferline'.setup{}

" Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 100

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = '#83a598'

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>

" Bufferline
lua require('bufferline')
