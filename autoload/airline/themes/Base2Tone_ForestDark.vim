scriptencoding utf-8
" Base2Tone_ForestDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_ForestDark#palette = {}

let s:N1   = [ '#353b35' , '#5e6e5e' , 17  , 190 ]
let s:N2   = [ '#fbfbf8' , '#485148' , 255 , 238 ]
let s:N3   = [ '#e5fb79' , '#353b35' , 85  , 234 ]
let g:airline#themes#Base2Tone_ForestDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_ForestDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbfbf8' , '#485148' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#353b35' , '#daf06a' , 17  , 45  ]
let s:I2 = [ '#fbfbf8' , '#435643' , 255 , 27  ]
let s:I3 = [ '#e5fb79' , '#353b35' , 15  , 17  ]
let g:airline#themes#Base2Tone_ForestDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_ForestDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbfbf8' , '#485148' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_ForestDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#656b47' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_ForestDark#palette.replace = copy(g:airline#themes#Base2Tone_ForestDark#palette.insert)
let g:airline#themes#Base2Tone_ForestDark#palette.replace.airline_a = [ s:I2[0]   , '#435643' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_ForestDark#palette.replace_modified = g:airline#themes#Base2Tone_ForestDark#palette.insert_modified

let s:V1 = [ '#353b35' , '#8fae8f' , 232 , 214 ]
let s:V2 = [ '#fbfbf8' , '#435643' , 232 , 202 ]
let s:V3 = [ '#fbfbf8' , '#353b35' , 15  , 52  ]
let g:airline#themes#Base2Tone_ForestDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_ForestDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbfbf8' , '#485148' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#485148' , '#353b35' , 239 , 234 , '' ]
let s:IA2 = [ '#485148' , '#353b35' , 239 , 235 , '' ]
let s:IA3 = [ '#485148' , '#353b35' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_ForestDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_ForestDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbfbf8' , '#485148' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_ForestDark#palette.accents = {
      \ 'red': [ '#435643' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_ForestDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f0fff0' , '#435643' , 189 , 55  , ''     ],
      \ [ '#fbfbf8' , '#4f634f' , 231 , 98  , ''     ],
      \ [ '#435643' , '#fbfbf8' , 55  , 231 , 'bold' ])

