""" LaTeX
" LaTeX auto-compilation
autocmd BufWritePost *.tex "!make"

" General
autocmd VimEnter * silent exec "! echo -ne '\e[1 q'"
autocmd InsertEnter * silent exec "! echo -ne '\e[5 q'"
autocmd InsertLeave * silent exec "! echo -ne '\e[1 q'"
autocmd VimLeave * silent exec "! echo -ne '\e[5 q'"

autocmd! BufWritePost vimrc source %
