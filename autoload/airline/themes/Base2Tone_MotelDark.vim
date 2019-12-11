scriptencoding utf-8
" Base2Tone_MotelDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_MotelDark#palette = {}

let s:N1   = [ '#373434' , '#86797b' , 237    , 245   ]
let s:N2   = [ '#fbf9f9' , '#5a5354' , 231    , 240   ]
let s:N3   = [ '#ffc8bd' , '#373434' , 123    , 237   ]
let g:airline#themes#Base2Tone_MotelDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_MotelDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#5a5354' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#373434' , '#ffb3a3' , 237    , 87    ]
let s:I2 = [ '#fbf9f9' , '#674c50' , 231    , 62    ]
let s:I3 = [ '#ffc8bd' , '#373434' , 123    , 237   ]
let g:airline#themes#Base2Tone_MotelDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_MotelDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#5a5354' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_MotelDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#e24f32' , s:I1[2] , 31    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MotelDark#palette.replace = copy(g:airline#themes#Base2Tone_MotelDark#palette.insert)
let g:airline#themes#Base2Tone_MotelDark#palette.replace.airline_a = [ s:I2[0]   , '#674c50' , s:I2[2] , 62    , ''     ]
let g:airline#themes#Base2Tone_MotelDark#palette.replace_modified = g:airline#themes#Base2Tone_MotelDark#palette.insert_modified

let s:V1 = [ '#373434' , '#b89da2' , 237    , 146   ]
let s:V2 = [ '#fbf9f9' , '#674c50' , 231    , 62    ]
let s:V3 = [ '#fbf9f9' , '#373434' , 231    , 237   ]
let g:airline#themes#Base2Tone_MotelDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_MotelDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#5a5354' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#5a5354' , '#373434' , 240    , 237   , '' ]
let s:IA2 = [ '#5a5354' , '#373434' , 240    , 237   , '' ]
let s:IA3 = [ '#5a5354' , '#373434' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_MotelDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_MotelDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#5a5354' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MotelDark#palette.accents = {
      \ 'red': [ '#674c50' , '' , 62    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_MotelDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f0dbdf' , '#674c50' , 189    , 62    , ''     ],
      \ [ '#fbf9f9' , '#7d5e63' , 231    , 62    , ''     ],
      \ [ '#674c50' , '#fbf9f9' , 62     , 231   , 'bold' ])

