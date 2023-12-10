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

" ------	LIGHTLINE
set noshowmode
let g:lightline = {'colorscheme': 'monosplash'}

" ------	MONOSPLASH COLORSCHEME
" let g:monosplash_color = 'cyan'
let g:monosplash_auto_cwd_color = 1
let g:monosplash_no_bg = 0
if getcwd() =~ '42/ft_transcendance'
  let g:monosplash_color = 'cyan'
endif
if getcwd() =~ 'twee/voicless'
  let g:monosplash_color = 'yellow'
endif
colorscheme monosplash
