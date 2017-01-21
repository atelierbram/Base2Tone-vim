scriptencoding utf-8
" Base2Tone_MorningDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_MorningDark#palette = {}

let s:N1   = [ '#31363f' , '#707a8f' , 17  , 190 ]
let s:N2   = [ '#faf8f5' , '#4f5664' , 255 , 238 ]
let s:N3   = [ '#e5ddcd' , '#31363f' , 85  , 234 ]
let g:airline#themes#Base2Tone_MorningDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_MorningDark#palette.normal_modified = {
      \ 'airline_c': [ '#faf8f5' , '#4f5664' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#31363f' , '#d1c2a3' , 17  , 45  ]
let s:I2 = [ '#faf8f5' , '#063289' , 255 , 27  ]
let s:I3 = [ '#e5ddcd' , '#31363f' , 15  , 17  ]
let g:airline#themes#Base2Tone_MorningDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_MorningDark#palette.insert_modified = {
      \ 'airline_c': [ '#faf8f5' , '#4f5664' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_MorningDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#2d2006' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MorningDark#palette.replace = copy(g:airline#themes#Base2Tone_MorningDark#palette.insert)
let g:airline#themes#Base2Tone_MorningDark#palette.replace.airline_a = [ s:I2[0]   , '#063289' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_MorningDark#palette.replace_modified = g:airline#themes#Base2Tone_MorningDark#palette.insert_modified

let s:V1 = [ '#31363f' , '#728fcb' , 232 , 214 ]
let s:V2 = [ '#faf8f5' , '#063289' , 232 , 202 ]
let s:V3 = [ '#faf8f5' , '#31363f' , 15  , 52  ]
let g:airline#themes#Base2Tone_MorningDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_MorningDark#palette.visual_modified = {
      \ 'airline_c': [ '#faf8f5' , '#4f5664' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#4f5664' , '#31363f' , 239 , 234 , '' ]
let s:IA2 = [ '#4f5664' , '#31363f' , 239 , 235 , '' ]
let s:IA3 = [ '#4f5664' , '#31363f' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_MorningDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_MorningDark#palette.inactive_modified = {
      \ 'airline_c': [ '#faf8f5' , '#4f5664' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MorningDark#palette.accents = {
      \ 'red': [ '#063289' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_MorningDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#dee6f7' , '#063289' , 189 , 55  , ''     ],
      \ [ '#faf8f5' , '#0b3c9d' , 231 , 98  , ''     ],
      \ [ '#063289' , '#faf8f5' , 55  , 231 , 'bold' ])

