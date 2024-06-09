" ------	LINE NUMBERS

set number
set cursorline
set numberwidth=6

" ------	LINE WRAP
set nowrap
augroup WrapLineInFileTypes
    autocmd!
    autocmd FileType markdown setlocal wrap
augroup END


