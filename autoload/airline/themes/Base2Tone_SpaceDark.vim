scriptencoding utf-8
" Base2Tone_SpaceDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_SpaceDark#palette = {}

let s:N1   = [ '#333342' , '#737391' , 237    , 245   ]
let s:N2   = [ '#fbf9f9' , '#515167' , 231    , 240   ]
let s:N3   = [ '#fe8c52' , '#333342' , 209    , 237   ]
let g:airline#themes#Base2Tone_SpaceDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_SpaceDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#515167' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#333342' , '#f88349' , 237    , 208   ]
let s:I2 = [ '#fbf9f9' , '#5151e6' , 231    , 61    ]
let s:I3 = [ '#fe8c52' , '#333342' , 209    , 237   ]
let g:airline#themes#Base2Tone_SpaceDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_SpaceDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#515167' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_SpaceDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#b25424' , s:I1[2] , 130   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SpaceDark#palette.replace = copy(g:airline#themes#Base2Tone_SpaceDark#palette.insert)
let g:airline#themes#Base2Tone_SpaceDark#palette.replace.airline_a = [ s:I2[0]   , '#5151e6' , s:I2[2] , 61    , ''     ]
let g:airline#themes#Base2Tone_SpaceDark#palette.replace_modified = g:airline#themes#Base2Tone_SpaceDark#palette.insert_modified

let s:V1 = [ '#333342' , '#8a8aad' , 237    , 245   ]
let s:V2 = [ '#fbf9f9' , '#5151e6' , 231    , 61    ]
let s:V3 = [ '#fbf9f9' , '#333342' , 231    , 237   ]
let g:airline#themes#Base2Tone_SpaceDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_SpaceDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#515167' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#515167' , '#333342' , 240    , 237   , '' ]
let s:IA2 = [ '#515167' , '#333342' , 240    , 237   , '' ]
let s:IA3 = [ '#515167' , '#333342' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_SpaceDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_SpaceDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbf9f9' , '#515167' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SpaceDark#palette.accents = {
      \ 'red': [ '#5151e6' , '' , 61    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_SpaceDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ebebff' , '#5151e6' , 231    , 61    , ''     ],
      \ [ '#fbf9f9' , '#6363ee' , 231    , 63    , ''     ],
      \ [ '#5151e6' , '#fbf9f9' , 61     , 231   , 'bold' ])

