scriptencoding utf-8
" Base2Tone_EveningLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_EveningLight#palette = {}

let s:N1   = [ '#7c756e' , '#d8d1ca' , 101    , 187   ]
let s:N2   = [ '#b37537' , '#c3bdb6' , 178    , 250   ]
let s:N3   = [ '#cb823a' , '#ebe6e0' , 214    , 188   ]
let g:airline#themes#Base2Tone_EveningLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_EveningLight#palette.normal_modified = {
      \ 'airline_c': [ '#b37537' , '#c3bdb6' , 178    , 250    , ''     ] ,
      \ }

let s:I1 = [ '#eeebff' , '#afa0fe' , 195    , 147   ]
let s:I2 = [ '#b37537' , '#ffb870' , 178    , 221   ]
let s:I3 = [ '#cb823a' , '#ebe6e0' , 214    , 188   ]
let g:airline#themes#Base2Tone_EveningLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_EveningLight#palette.insert_modified = {
      \ 'airline_c': [ '#b37537' , '#c3bdb6' , 178    , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_EveningLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#6a51e6' , s:I1[2] , 62    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_EveningLight#palette.replace = copy(g:airline#themes#Base2Tone_EveningLight#palette.insert)
let g:airline#themes#Base2Tone_EveningLight#palette.replace.airline_a = [ s:I2[0]   , '#b37537' , s:I2[2] , 178   , ''     ]
let g:airline#themes#Base2Tone_EveningLight#palette.replace_modified = g:airline#themes#Base2Tone_EveningLight#palette.insert_modified

let s:V1 = [ '#fbfaf9' , '#ffad5c' , 231    , 220   ]
let s:V2 = [ '#b37537' , '#ffb870' , 178    , 221   ]
let s:V3 = [ '#cb823a' , '#ebe6e0' , 214    , 188   ]
let g:airline#themes#Base2Tone_EveningLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_EveningLight#palette.visual_modified = {
      \ 'airline_c': [ '#b37537' , '#c3bdb6' , 178    , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#c3bdb6' , '#ebe6e0' , 250    , 188   , '' ]
let s:IA2 = [ '#c3bdb6' , '#ebe6e0' , 250    , 188   , '' ]
let s:IA3 = [ '#c3bdb6' , '#ebe6e0' , 250    , 188   , '' ]
let g:airline#themes#Base2Tone_EveningLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_EveningLight#palette.inactive_modified = {
      \ 'airline_c': [ '#b37537' , '#c3bdb6' , 178    , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_EveningLight#palette.accents = {
      \ 'red': [ '#6a51e6' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_EveningLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#eeebff' , '#6a51e6' , 195    , 62    , ''     ],
      \ [ '#fbfaf9' , '#7a63ee' , 231    , 63    , ''     ],
      \ [ '#6a51e6' , '#fbfaf9' , 62     , 231   , 'bold' ])

