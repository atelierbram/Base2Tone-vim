scriptencoding utf-8
" Base2Tone_HeathDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_HeathDark#palette = {}

let s:N1   = [ '#2f2d2f' , '#6f6b70' , 17  , 190 ]
let s:N2   = [ '#fbfaf9' , '#575158' , 255 , 238 ]
let s:N3   = [ '#ffd599' , '#2f2d2f' , 85  , 234 ]
let g:airline#themes#Base2Tone_HeathDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_HeathDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#575158' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#2f2d2f' , '#e6c699' , 17  , 45  ]
let s:I2 = [ '#fbfaf9' , '#a21fad' , 255 , 27  ]
let s:I3 = [ '#ffd599' , '#2f2d2f' , 15  , 17  ]
let g:airline#themes#Base2Tone_HeathDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_HeathDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#575158' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_HeathDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#995900' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_HeathDark#palette.replace = copy(g:airline#themes#Base2Tone_HeathDark#palette.insert)
let g:airline#themes#Base2Tone_HeathDark#palette.replace.airline_a = [ s:I2[0]   , '#a21fad' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_HeathDark#palette.replace_modified = g:airline#themes#Base2Tone_HeathDark#palette.insert_modified

let s:V1 = [ '#2f2d2f' , '#cb79d2' , 232 , 214 ]
let s:V2 = [ '#fbfaf9' , '#a21fad' , 232 , 202 ]
let s:V3 = [ '#fbfaf9' , '#2f2d2f' , 15  , 52  ]
let g:airline#themes#Base2Tone_HeathDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_HeathDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#575158' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#575158' , '#2f2d2f' , 239 , 234 , '' ]
let s:IA2 = [ '#575158' , '#2f2d2f' , 239 , 235 , '' ]
let s:IA3 = [ '#575158' , '#2f2d2f' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_HeathDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_HeathDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#575158' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_HeathDark#palette.accents = {
      \ 'red': [ '#a21fad' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_HeathDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#fdebff' , '#a21fad' , 189 , 55  , ''     ],
      \ [ '#fbfaf9' , '#845e87' , 231 , 98  , ''     ],
      \ [ '#a21fad' , '#fbfaf9' , 55  , 231 , 'bold' ])

