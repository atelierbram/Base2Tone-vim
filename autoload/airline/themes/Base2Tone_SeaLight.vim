scriptencoding utf-8
" Base2Tone_SeaLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_SeaLight#palette = {}

let s:N1   = [ '#717a77' , '#cbd7d3' , 17  , 190 ]
let s:N2   = [ '#067953' , '#b7c2be' , 255 , 238 ]
let s:N3   = [ '#088c60' , '#e1eae7' , 85  , 234 ]
let g:airline#themes#Base2Tone_SeaLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_SeaLight#palette.normal_modified = {
      \ 'airline_c': [ '#067953' , '#b7c2be' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#ebf4ff' , '#6e9bcf' , 17  , 45  ]
let s:I2 = [ '#067953' , '#14e19d' , 255 , 27  ]
let s:I3 = [ '#088c60' , '#e1eae7' , 15  , 17  ]
let g:airline#themes#Base2Tone_SeaLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_SeaLight#palette.insert_modified = {
      \ 'airline_c': [ '#067953' , '#b7c2be' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_SeaLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#004a9e' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SeaLight#palette.replace = copy(g:airline#themes#Base2Tone_SeaLight#palette.insert)
let g:airline#themes#Base2Tone_SeaLight#palette.replace.airline_a = [ s:I2[0]   , '#067953' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_SeaLight#palette.replace_modified = g:airline#themes#Base2Tone_SeaLight#palette.insert_modified

let s:V1 = [ '#f9fbfa' , '#0fc78a' , 232 , 214 ]
let s:V2 = [ '#067953' , '#14e19d' , 232 , 202 ]
let s:V3 = [ '#088c60' , '#e1eae7' , 15  , 52  ]
let g:airline#themes#Base2Tone_SeaLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_SeaLight#palette.visual_modified = {
      \ 'airline_c': [ '#067953' , '#b7c2be' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#b7c2be' , '#e1eae7' , 239 , 234 , '' ]
let s:IA2 = [ '#b7c2be' , '#e1eae7' , 239 , 235 , '' ]
let s:IA3 = [ '#b7c2be' , '#e1eae7' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_SeaLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_SeaLight#palette.inactive_modified = {
      \ 'airline_c': [ '#067953' , '#b7c2be' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SeaLight#palette.accents = {
      \ 'red': [ '#004a9e' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_SeaLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ebf4ff' , '#004a9e' , 189 , 55  , ''     ],
      \ [ '#f9fbfa' , '#1757a1' , 231 , 98  , ''     ],
      \ [ '#004a9e' , '#f9fbfa' , 55  , 231 , 'bold' ])

