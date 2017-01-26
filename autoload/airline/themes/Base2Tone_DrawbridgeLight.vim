scriptencoding utf-8
" Base2Tone_DrawbridgeLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_DrawbridgeLight#palette = {}

let s:N1   = [ '#71787a' , '#cbd4d7' , 102    , 252   ]
let s:N2   = [ '#289dbd' , '#b7c0c2' , 31     , 250   ]
let s:N3   = [ '#33abcc' , '#e1e8ea' , 38     , 254   ]
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_DrawbridgeLight#palette.normal_modified = {
      \ 'airline_c': [ '#289dbd' , '#b7c0c2' , 31     , 250    , ''     ] ,
      \ }

let s:I1 = [ '#e1e6ff' , '#8b9efd' , 189    , 146   ]
let s:I2 = [ '#289dbd' , '#75d5f0' , 31     , 51    ]
let s:I3 = [ '#33abcc' , '#e1e8ea' , 38     , 254   ]
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.insert_modified = {
      \ 'airline_c': [ '#289dbd' , '#b7c0c2' , 31     , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#4961da' , s:I1[2] , 62    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DrawbridgeLight#palette.replace = copy(g:airline#themes#Base2Tone_DrawbridgeLight#palette.insert)
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.replace.airline_a = [ s:I2[0]   , '#289dbd' , s:I2[2] , 31    , ''     ]
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.replace_modified = g:airline#themes#Base2Tone_DrawbridgeLight#palette.insert_modified

let s:V1 = [ '#f9fbfb' , '#67c9e4' , 231    , 45    ]
let s:V2 = [ '#289dbd' , '#75d5f0' , 31     , 51    ]
let s:V3 = [ '#33abcc' , '#e1e8ea' , 38     , 254   ]
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.visual_modified = {
      \ 'airline_c': [ '#289dbd' , '#b7c0c2' , 31     , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#b7c0c2' , '#e1e8ea' , 250    , 254   , '' ]
let s:IA2 = [ '#b7c0c2' , '#e1e8ea' , 250    , 254   , '' ]
let s:IA3 = [ '#b7c0c2' , '#e1e8ea' , 250    , 254   , '' ]
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.inactive_modified = {
      \ 'airline_c': [ '#289dbd' , '#b7c0c2' , 31     , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DrawbridgeLight#palette.accents = {
      \ 'red': [ '#4961da' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_DrawbridgeLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#e1e6ff' , '#4961da' , 189    , 62    , ''     ],
      \ [ '#f9fbfb' , '#516aec' , 231    , 62    , ''     ],
      \ [ '#4961da' , '#f9fbfb' , 62     , 231   , 'bold' ])

