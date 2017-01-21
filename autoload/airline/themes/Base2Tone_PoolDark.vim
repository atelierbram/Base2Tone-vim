scriptencoding utf-8
" Base2Tone_PoolDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_PoolDark#palette = {}

let s:N1   = [ '#372f42' , '#706383' , 17  , 190 ]
let s:N2   = [ '#fbf9f9' , '#574b68' , 255 , 238 ]
let s:N3   = [ '#ffb6b3' , '#372f42' , 85  , 234 ]
let g:airline#themes#Base2Tone_PoolDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_PoolDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#574b68' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#372f42' , '#ff9e99' , 17  , 45  ]
let s:I2 = [ '#fbf9f9' , '#8f51e6' , 255 , 27  ]
let s:I3 = [ '#ffb6b3' , '#372f42' , 15  , 17  ]
let g:airline#themes#Base2Tone_PoolDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_PoolDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#574b68' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_PoolDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#cf504a' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_PoolDark#palette.replace = copy(g:airline#themes#Base2Tone_PoolDark#palette.insert)
let g:airline#themes#Base2Tone_PoolDark#palette.replace.airline_a = [ s:I2[0]   , '#8f51e6' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_PoolDark#palette.replace_modified = g:airline#themes#Base2Tone_PoolDark#palette.insert_modified

let s:V1 = [ '#372f42' , '#c7a0fe' , 232 , 214 ]
let s:V2 = [ '#fbf9f9' , '#8f51e6' , 232 , 202 ]
let s:V3 = [ '#fbf9f9' , '#372f42' , 15  , 52  ]
let g:airline#themes#Base2Tone_PoolDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_PoolDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#574b68' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#574b68' , '#372f42' , 239 , 234 , '' ]
let s:IA2 = [ '#574b68' , '#372f42' , 239 , 235 , '' ]
let s:IA3 = [ '#574b68' , '#372f42' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_PoolDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_PoolDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#574b68' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_PoolDark#palette.accents = {
      \ 'red': [ '#8f51e6' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_PoolDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f3ebff' , '#8f51e6' , 189 , 55  , ''     ],
      \ [ '#fbf9f9' , '#9d63ee' , 231 , 98  , ''     ],
      \ [ '#8f51e6' , '#fbf9f9' , 55  , 231 , 'bold' ])

