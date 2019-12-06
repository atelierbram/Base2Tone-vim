scriptencoding utf-8
" Base2Tone_LavenderDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_LavenderDark#palette = {}

let s:N1   = [ '#2c2839' , '#6e658b' , 237    , 245   ]
let s:N2   = [ '#faf8fc' , '#4b455f' , 231    , 240   ]
let s:N3   = [ '#ecd1ff' , '#2c2839' , 217    , 237   ]
let g:airline#themes#Base2Tone_LavenderDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_LavenderDark#palette.normal_modified = {
      \ 'airline_c': [ '#faf8fc' , '#4b455f' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#2c2839' , '#e3bdff' , 237    , 217   ]
let s:I2 = [ '#faf8fc' , '#7451e6' , 231    , 98    ]
let s:I3 = [ '#ecd1ff' , '#2c2839' , 217    , 237   ]
let g:airline#themes#Base2Tone_LavenderDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_LavenderDark#palette.insert_modified = {
      \ 'airline_c': [ '#faf8fc' , '#4b455f' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_LavenderDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#b042ff' , s:I1[2] , 167   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LavenderDark#palette.replace = copy(g:airline#themes#Base2Tone_LavenderDark#palette.insert)
let g:airline#themes#Base2Tone_LavenderDark#palette.replace.airline_a = [ s:I2[0]   , '#7451e6' , s:I2[2] , 98    , ''     ]
let g:airline#themes#Base2Tone_LavenderDark#palette.replace_modified = g:airline#themes#Base2Tone_LavenderDark#palette.insert_modified

let s:V1 = [ '#2c2839' , '#b5a0fe' , 237    , 147   ]
let s:V2 = [ '#faf8fc' , '#7451e6' , 231    , 98    ]
let s:V3 = [ '#faf8fc' , '#2c2839' , 231    , 237   ]
let g:airline#themes#Base2Tone_LavenderDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_LavenderDark#palette.visual_modified = {
      \ 'airline_c': [ '#faf8fc' , '#4b455f' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#4b455f' , '#2c2839' , 240    , 237   , '' ]
let s:IA2 = [ '#4b455f' , '#2c2839' , 240    , 237   , '' ]
let s:IA3 = [ '#4b455f' , '#2c2839' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_LavenderDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_LavenderDark#palette.inactive_modified = {
      \ 'airline_c': [ '#faf8fc' , '#4b455f' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LavenderDark#palette.accents = {
      \ 'red': [ '#7451e6' , '' , 98    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_LavenderDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#efebff' , '#7451e6' , 231    , 98    , ''     ],
      \ [ '#faf8fc' , '#8363ee' , 231    , 135   , ''     ],
      \ [ '#7451e6' , '#faf8fc' , 98     , 231   , 'bold' ])

