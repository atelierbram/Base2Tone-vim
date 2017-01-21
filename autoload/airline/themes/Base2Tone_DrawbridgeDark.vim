scriptencoding utf-8
" Base2Tone_DrawbridgeDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_DrawbridgeDark#palette = {}

let s:N1   = [ '#252a41' , '#5e6587' , 17  , 190 ]
let s:N2   = [ '#f9fbfb' , '#444b6f' , 255 , 238 ]
let s:N3   = [ '#99e9ff' , '#252a41' , 85  , 234 ]
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_DrawbridgeDark#palette.normal_modified = {
      \ 'airline_c': [ '#f9fbfb' , '#444b6f' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#252a41' , '#86e0f9' , 17  , 45  ]
let s:I2 = [ '#f9fbfb' , '#4961da' , 255 , 27  ]
let s:I3 = [ '#99e9ff' , '#252a41' , 15  , 17  ]
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.insert_modified = {
      \ 'airline_c': [ '#f9fbfb' , '#444b6f' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#289dbd' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DrawbridgeDark#palette.replace = copy(g:airline#themes#Base2Tone_DrawbridgeDark#palette.insert)
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.replace.airline_a = [ s:I2[0]   , '#4961da' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.replace_modified = g:airline#themes#Base2Tone_DrawbridgeDark#palette.insert_modified

let s:V1 = [ '#252a41' , '#8b9efd' , 232 , 214 ]
let s:V2 = [ '#f9fbfb' , '#4961da' , 232 , 202 ]
let s:V3 = [ '#f9fbfb' , '#252a41' , 15  , 52  ]
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.visual_modified = {
      \ 'airline_c': [ '#f9fbfb' , '#444b6f' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#444b6f' , '#252a41' , 239 , 234 , '' ]
let s:IA2 = [ '#444b6f' , '#252a41' , 239 , 235 , '' ]
let s:IA3 = [ '#444b6f' , '#252a41' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.inactive_modified = {
      \ 'airline_c': [ '#f9fbfb' , '#444b6f' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DrawbridgeDark#palette.accents = {
      \ 'red': [ '#4961da' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_DrawbridgeDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#e1e6ff' , '#4961da' , 189 , 55  , ''     ],
      \ [ '#f9fbfb' , '#516aec' , 231 , 98  , ''     ],
      \ [ '#4961da' , '#f9fbfb' , 55  , 231 , 'bold' ])

