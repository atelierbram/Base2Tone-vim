scriptencoding utf-8
" Base2Tone_MotelLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_MotelLight#palette = {}

let s:N1   = [ '#847875' , '#dcd2d0' , 102    , 252   ]
let s:N2   = [ '#e24f32' , '#cac0be' , 31     , 250   ]
let s:N3   = [ '#ea5f43' , '#ede5e3' , 38     , 254   ]
let g:airline#themes#Base2Tone_MotelLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_MotelLight#palette.normal_modified = {
      \ 'airline_c': [ '#e24f32' , '#cac0be' , 31     , 250    , ''     ] ,
      \ }

let s:I1 = [ '#f0dbdf' , '#b89da2' , 189    , 146   ]
let s:I2 = [ '#e24f32' , '#ffa28f' , 31     , 51    ]
let s:I3 = [ '#ea5f43' , '#ede5e3' , 38     , 254   ]
let g:airline#themes#Base2Tone_MotelLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_MotelLight#palette.insert_modified = {
      \ 'airline_c': [ '#e24f32' , '#cac0be' , 31     , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_MotelLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#674c50' , s:I1[2] , 62    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MotelLight#palette.replace = copy(g:airline#themes#Base2Tone_MotelLight#palette.insert)
let g:airline#themes#Base2Tone_MotelLight#palette.replace.airline_a = [ s:I2[0]   , '#e24f32' , s:I2[2] , 31    , ''     ]
let g:airline#themes#Base2Tone_MotelLight#palette.replace_modified = g:airline#themes#Base2Tone_MotelLight#palette.insert_modified

let s:V1 = [ '#fbf9f9' , '#f8917c' , 231    , 45    ]
let s:V2 = [ '#e24f32' , '#ffa28f' , 31     , 51    ]
let s:V3 = [ '#ea5f43' , '#ede5e3' , 38     , 254   ]
let g:airline#themes#Base2Tone_MotelLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_MotelLight#palette.visual_modified = {
      \ 'airline_c': [ '#e24f32' , '#cac0be' , 31     , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#cac0be' , '#ede5e3' , 250    , 254   , '' ]
let s:IA2 = [ '#cac0be' , '#ede5e3' , 250    , 254   , '' ]
let s:IA3 = [ '#cac0be' , '#ede5e3' , 250    , 254   , '' ]
let g:airline#themes#Base2Tone_MotelLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_MotelLight#palette.inactive_modified = {
      \ 'airline_c': [ '#e24f32' , '#cac0be' , 31     , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MotelLight#palette.accents = {
      \ 'red': [ '#674c50' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_MotelLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f0dbdf' , '#674c50' , 189    , 62    , ''     ],
      \ [ '#fbf9f9' , '#7d5e63' , 231    , 62    , ''     ],
      \ [ '#674c50' , '#fbf9f9' , 62     , 231   , 'bold' ])

