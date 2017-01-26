scriptencoding utf-8
" Base2Tone_DesertDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_DesertDark#palette = {}

let s:N1   = [ '#3d3a34' , '#908774' , 237    , 245   ]
let s:N2   = [ '#fbfaf9' , '#615c51' , 231    , 240   ]
let s:N3   = [ '#ffb380' , '#3d3a34' , 216    , 237   ]
let g:airline#themes#Base2Tone_DesertDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_DesertDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#615c51' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#3d3a34' , '#f8a872' , 237    , 216   ]
let s:I2 = [ '#fbfaf9' , '#5c523d' , 231    , 59    ]
let s:I3 = [ '#ffb380' , '#3d3a34' , 216    , 237   ]
let g:airline#themes#Base2Tone_DesertDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_DesertDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#615c51' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_DesertDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#bc672f' , s:I1[2] , 130   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DesertDark#palette.replace = copy(g:airline#themes#Base2Tone_DesertDark#palette.insert)
let g:airline#themes#Base2Tone_DesertDark#palette.replace.airline_a = [ s:I2[0]   , '#5c523d' , s:I2[2] , 59    , ''     ]
let g:airline#themes#Base2Tone_DesertDark#palette.replace_modified = g:airline#themes#Base2Tone_DesertDark#palette.insert_modified

let s:V1 = [ '#3d3a34' , '#ac8e53' , 237    , 137   ]
let s:V2 = [ '#fbfaf9' , '#5c523d' , 231    , 59    ]
let s:V3 = [ '#fbfaf9' , '#3d3a34' , 231    , 237   ]
let g:airline#themes#Base2Tone_DesertDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_DesertDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#615c51' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#615c51' , '#3d3a34' , 240    , 237   , '' ]
let s:IA2 = [ '#615c51' , '#3d3a34' , 240    , 237   , '' ]
let s:IA3 = [ '#615c51' , '#3d3a34' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_DesertDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_DesertDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#615c51' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DesertDark#palette.accents = {
      \ 'red': [ '#5c523d' , '' , 59    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_DesertDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f2ead9' , '#5c523d' , 224    , 59    , ''     ],
      \ [ '#fbfaf9' , '#6e6045' , 231    , 95    , ''     ],
      \ [ '#5c523d' , '#fbfaf9' , 59     , 231   , 'bold' ])

