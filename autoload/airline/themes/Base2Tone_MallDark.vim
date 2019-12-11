scriptencoding utf-8
" Base2Tone_MallDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_MallDark#palette = {}

let s:N1   = [ '#2b2b2c' , '#6a686e' , 237    , 245   ]
let s:N2   = [ '#f8fafc' , '#515053' , 231    , 240   ]
let s:N3   = [ '#b3dbff' , '#2b2b2c' , 123    , 237   ]
let g:airline#themes#Base2Tone_MallDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_MallDark#palette.normal_modified = {
      \ 'airline_c': [ '#f8fafc' , '#515053' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#2b2b2c' , '#9ed2ff' , 237    , 87    ]
let s:I2 = [ '#f8fafc' , '#855ee8' , 231    , 62    ]
let s:I3 = [ '#b3dbff' , '#2b2b2c' , 123    , 237   ]
let g:airline#themes#Base2Tone_MallDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_MallDark#palette.insert_modified = {
      \ 'airline_c': [ '#f8fafc' , '#515053' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_MallDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#3692e2' , s:I1[2] , 31    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MallDark#palette.replace = copy(g:airline#themes#Base2Tone_MallDark#palette.insert)
let g:airline#themes#Base2Tone_MallDark#palette.replace.airline_a = [ s:I2[0]   , '#855ee8' , s:I2[2] , 62    , ''     ]
let g:airline#themes#Base2Tone_MallDark#palette.replace_modified = g:airline#themes#Base2Tone_MallDark#palette.insert_modified

let s:V1 = [ '#2b2b2c' , '#c5adff' , 237    , 146   ]
let s:V2 = [ '#f8fafc' , '#855ee8' , 231    , 62    ]
let s:V3 = [ '#f8fafc' , '#2b2b2c' , 231    , 237   ]
let g:airline#themes#Base2Tone_MallDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_MallDark#palette.visual_modified = {
      \ 'airline_c': [ '#f8fafc' , '#515053' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#515053' , '#2b2b2c' , 240    , 237   , '' ]
let s:IA2 = [ '#515053' , '#2b2b2c' , 240    , 237   , '' ]
let s:IA3 = [ '#515053' , '#2b2b2c' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_MallDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_MallDark#palette.inactive_modified = {
      \ 'airline_c': [ '#f8fafc' , '#515053' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MallDark#palette.accents = {
      \ 'red': [ '#855ee8' , '' , 62    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_MallDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f4f0ff' , '#855ee8' , 189    , 62    , ''     ],
      \ [ '#f8fafc' , '#936df3' , 231    , 62    , ''     ],
      \ [ '#855ee8' , '#f8fafc' , 62     , 231   , 'bold' ])

