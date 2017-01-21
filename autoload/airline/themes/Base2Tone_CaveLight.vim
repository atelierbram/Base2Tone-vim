scriptencoding utf-8
" Base2Tone_CaveLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_CaveLight#palette = {}

let s:N1   = [ '#787673' , '#d6d3cc' , 17  , 190 ]
let s:N2   = [ '#996e00' , '#c1beb9' , 255 , 238 ]
let s:N3   = [ '#aa7c09' , '#eae7e1' , 85  , 234 ]
let g:airline#themes#Base2Tone_CaveLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_CaveLight#palette.normal_modified = {
      \ 'airline_c': [ '#996e00' , '#c1beb9' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#ffebf2' , '#d27998' , 17  , 45  ]
let s:I2 = [ '#996e00' , '#ddaf3c' , 255 , 27  ]
let s:I3 = [ '#aa7c09' , '#eae7e1' , 15  , 17  ]
let g:airline#themes#Base2Tone_CaveLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_CaveLight#palette.insert_modified = {
      \ 'airline_c': [ '#996e00' , '#c1beb9' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_CaveLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#ad1f51' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_CaveLight#palette.replace = copy(g:airline#themes#Base2Tone_CaveLight#palette.insert)
let g:airline#themes#Base2Tone_CaveLight#palette.replace.airline_a = [ s:I2[0]   , '#996e00' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_CaveLight#palette.replace_modified = g:airline#themes#Base2Tone_CaveLight#palette.insert_modified

let s:V1 = [ '#fbfaf9' , '#cca133' , 232 , 214 ]
let s:V2 = [ '#996e00' , '#ddaf3c' , 232 , 202 ]
let s:V3 = [ '#aa7c09' , '#eae7e1' , 15  , 52  ]
let g:airline#themes#Base2Tone_CaveLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_CaveLight#palette.visual_modified = {
      \ 'airline_c': [ '#996e00' , '#c1beb9' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#c1beb9' , '#eae7e1' , 239 , 234 , '' ]
let s:IA2 = [ '#c1beb9' , '#eae7e1' , 239 , 235 , '' ]
let s:IA3 = [ '#c1beb9' , '#eae7e1' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_CaveLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_CaveLight#palette.inactive_modified = {
      \ 'airline_c': [ '#996e00' , '#c1beb9' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_CaveLight#palette.accents = {
      \ 'red': [ '#ad1f51' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_CaveLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ffebf2' , '#ad1f51' , 189 , 55  , ''     ],
      \ [ '#fbfaf9' , '#875e6d' , 231 , 98  , ''     ],
      \ [ '#ad1f51' , '#fbfaf9' , 55  , 231 , 'bold' ])

