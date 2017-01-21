scriptencoding utf-8
" Base2Tone_DesertDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_DesertDark#palette = {}

let s:N1   = [ '#3d3a34' , '#908774' , 17  , 190 ]
let s:N2   = [ '#fbfaf9' , '#615c51' , 255 , 238 ]
let s:N3   = [ '#ffb380' , '#3d3a34' , 85  , 234 ]
let g:airline#themes#Base2Tone_DesertDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_DesertDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#615c51' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#3d3a34' , '#f8a872' , 17  , 45  ]
let s:I2 = [ '#fbfaf9' , '#5c523d' , 255 , 27  ]
let s:I3 = [ '#ffb380' , '#3d3a34' , 15  , 17  ]
let g:airline#themes#Base2Tone_DesertDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_DesertDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#615c51' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_DesertDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#bc672f' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DesertDark#palette.replace = copy(g:airline#themes#Base2Tone_DesertDark#palette.insert)
let g:airline#themes#Base2Tone_DesertDark#palette.replace.airline_a = [ s:I2[0]   , '#5c523d' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_DesertDark#palette.replace_modified = g:airline#themes#Base2Tone_DesertDark#palette.insert_modified

let s:V1 = [ '#3d3a34' , '#ac8e53' , 232 , 214 ]
let s:V2 = [ '#fbfaf9' , '#5c523d' , 232 , 202 ]
let s:V3 = [ '#fbfaf9' , '#3d3a34' , 15  , 52  ]
let g:airline#themes#Base2Tone_DesertDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_DesertDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#615c51' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#615c51' , '#3d3a34' , 239 , 234 , '' ]
let s:IA2 = [ '#615c51' , '#3d3a34' , 239 , 235 , '' ]
let s:IA3 = [ '#615c51' , '#3d3a34' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_DesertDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_DesertDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#615c51' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DesertDark#palette.accents = {
      \ 'red': [ '#5c523d' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_DesertDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f2ead9' , '#5c523d' , 189 , 55  , ''     ],
      \ [ '#fbfaf9' , '#6e6045' , 231 , 98  , ''     ],
      \ [ '#5c523d' , '#fbfaf9' , 55  , 231 , 'bold' ])

