" ------	MONOSPLASH COLORSCHEME
let g:monosplash_auto_cwd_color = 1
let g:monosplash_no_bg = 0
if getcwd() =~ '42/ft_transcendance'
  let g:monosplash_color = 'cyan'
endif
if getcwd() =~ 'twee/voiceless'
  let g:monosplash_color = 'yellow'
endif
colorscheme monosplash
