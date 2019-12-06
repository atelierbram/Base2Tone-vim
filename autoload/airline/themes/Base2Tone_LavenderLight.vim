scriptencoding utf-8
" Base2Tone_LavenderLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_LavenderLight#palette = {}

let s:N1   = [ '#7c6f85' , '#d8cce0' , 243    , 252   ]
let s:N2   = [ '#b042ff' , '#c4b6ce' , 167    , 250   ]
let s:N3   = [ '#b957ff' , '#ece4f1' , 167    , 254   ]
let g:airline#themes#Base2Tone_LavenderLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_LavenderLight#palette.normal_modified = {
      \ 'airline_c': [ '#b042ff' , '#c4b6ce' , 167    , 250    , ''     ] ,
      \ }

let s:I1 = [ '#efebff' , '#b5a0fe' , 231    , 147   ]
let s:I2 = [ '#b042ff' , '#dba8ff' , 167    , 210   ]
let s:I3 = [ '#b957ff' , '#ece4f1' , 167    , 254   ]
let g:airline#themes#Base2Tone_LavenderLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_LavenderLight#palette.insert_modified = {
      \ 'airline_c': [ '#b042ff' , '#c4b6ce' , 167    , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_LavenderLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#7451e6' , s:I1[2] , 98    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LavenderLight#palette.replace = copy(g:airline#themes#Base2Tone_LavenderLight#palette.insert)
let g:airline#themes#Base2Tone_LavenderLight#palette.replace.airline_a = [ s:I2[0]   , '#b042ff' , s:I2[2] , 167   , ''     ]
let g:airline#themes#Base2Tone_LavenderLight#palette.replace_modified = g:airline#themes#Base2Tone_LavenderLight#palette.insert_modified

let s:V1 = [ '#faf8fc' , '#d294ff' , 231    , 210   ]
let s:V2 = [ '#b042ff' , '#dba8ff' , 167    , 210   ]
let s:V3 = [ '#b957ff' , '#ece4f1' , 167    , 254   ]
let g:airline#themes#Base2Tone_LavenderLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_LavenderLight#palette.visual_modified = {
      \ 'airline_c': [ '#b042ff' , '#c4b6ce' , 167    , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#c4b6ce' , '#ece4f1' , 250    , 254   , '' ]
let s:IA2 = [ '#c4b6ce' , '#ece4f1' , 250    , 254   , '' ]
let s:IA3 = [ '#c4b6ce' , '#ece4f1' , 250    , 254   , '' ]
let g:airline#themes#Base2Tone_LavenderLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_LavenderLight#palette.inactive_modified = {
      \ 'airline_c': [ '#b042ff' , '#c4b6ce' , 167    , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LavenderLight#palette.accents = {
      \ 'red': [ '#7451e6' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_LavenderLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#efebff' , '#7451e6' , 231    , 98    , ''     ],
      \ [ '#faf8fc' , '#8363ee' , 231    , 135   , ''     ],
      \ [ '#7451e6' , '#faf8fc' , 98     , 231   , 'bold' ])

