nnoremap <silent> <Leader>fi :Files<CR>
nnoremap <silent> <Leader>rg :Rg<CR>
" Make ripgrep search file contents only, not filenames:
" https://github.com/junegunn/fzf.vim/issues/346#issuecomment-288483704
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
