scriptencoding utf-8
" Base2Tone_SuburbDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_SuburbDark#palette = {}

let s:N1   = [ '#292c3d' , '#5b6080' , 237    , 245   ]
let s:N2   = [ '#fbf9fa' , '#444864' , 231    , 240   ]
let s:N3   = [ '#ffb3d2' , '#292c3d' , 217    , 237   ]
let g:airline#themes#Base2Tone_SuburbDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_SuburbDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbf9fa' , '#444864' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#292c3d' , '#ff99c3' , 237    , 217   ]
let s:I2 = [ '#fbf9fa' , '#5165e6' , 231    , 98    ]
let s:I3 = [ '#ffb3d2' , '#292c3d' , 217    , 237   ]
let g:airline#themes#Base2Tone_SuburbDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_SuburbDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbf9fa' , '#444864' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_SuburbDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d14781' , s:I1[2] , 167   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SuburbDark#palette.replace = copy(g:airline#themes#Base2Tone_SuburbDark#palette.insert)
let g:airline#themes#Base2Tone_SuburbDark#palette.replace.airline_a = [ s:I2[0]   , '#5165e6' , s:I2[2] , 98    , ''     ]
let g:airline#themes#Base2Tone_SuburbDark#palette.replace_modified = g:airline#themes#Base2Tone_SuburbDark#palette.insert_modified

let s:V1 = [ '#292c3d' , '#a0acfe' , 237    , 147   ]
let s:V2 = [ '#fbf9fa' , '#5165e6' , 231    , 98    ]
let s:V3 = [ '#fbf9fa' , '#292c3d' , 231    , 237   ]
let g:airline#themes#Base2Tone_SuburbDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_SuburbDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbf9fa' , '#444864' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#444864' , '#292c3d' , 240    , 237   , '' ]
let s:IA2 = [ '#444864' , '#292c3d' , 240    , 237   , '' ]
let s:IA3 = [ '#444864' , '#292c3d' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_SuburbDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_SuburbDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbf9fa' , '#444864' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SuburbDark#palette.accents = {
      \ 'red': [ '#5165e6' , '' , 98    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_SuburbDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ebedff' , '#5165e6' , 231    , 98    , ''     ],
      \ [ '#fbf9fa' , '#6375ee' , 231    , 135   , ''     ],
      \ [ '#5165e6' , '#fbf9fa' , 98     , 231   , 'bold' ])

