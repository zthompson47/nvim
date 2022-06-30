" Vim syntax file .lyc
" Language:     Allotropic
" Maintainer:   Zach Thompson <zach@allotropic.com>
" Last Change:	2015 Dec 8
" Remark:       Peace

if exists("b:current_syntax")
  finish
endif

" Get title and author from first line of file
syn region lyc_author matchgroup=lyc_title start=+\%^[^-]*+ end=+\n+
"syn match lyc_title /\%^\zs.*\ze-/ contains=lyc_author
"syn match lyc_author /\%^.*-\zs.*\ze$/ containedin=lyc_title

" Render anything in brackets as a chord
syn region allotropic_chord matchgroup=allotropic_bracket start=/\[/ end=/]/
hi def link allotropic_chord Special
hi def link allotropic_bracket Comment
hi def link lyc_title Type
hi def link lyc_author Comment
