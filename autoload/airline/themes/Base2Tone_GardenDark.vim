scriptencoding utf-8
" Base2Tone_GardenDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_GardenDark#palette = {}

let s:N1   = [ '#2b2c2a' , '#696d69' , 237    , 245   ]
let s:N2   = [ '#fbfaf8' , '#505350' , 231    , 240   ]
let s:N3   = [ '#e0cab8' , '#2b2c2a' , 209    , 237   ]
let g:airline#themes#Base2Tone_GardenDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_GardenDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbfaf8' , '#505350' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#2b2c2a' , '#d9af8c' , 237    , 208   ]
let s:I2 = [ '#fbfaf8' , '#1c8217' , 231    , 61    ]
let s:I3 = [ '#e0cab8' , '#2b2c2a' , 209    , 237   ]
let g:airline#themes#Base2Tone_GardenDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_GardenDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbfaf8' , '#505350' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_GardenDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#bd5d0f' , s:I1[2] , 130   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_GardenDark#palette.replace = copy(g:airline#themes#Base2Tone_GardenDark#palette.insert)
let g:airline#themes#Base2Tone_GardenDark#palette.replace.airline_a = [ s:I2[0]   , '#1c8217' , s:I2[2] , 61    , ''     ]
let g:airline#themes#Base2Tone_GardenDark#palette.replace_modified = g:airline#themes#Base2Tone_GardenDark#palette.insert_modified

let s:V1 = [ '#2b2c2a' , '#6bcc66' , 237    , 245   ]
let s:V2 = [ '#fbfaf8' , '#1c8217' , 231    , 61    ]
let s:V3 = [ '#fbfaf8' , '#2b2c2a' , 231    , 237   ]
let g:airline#themes#Base2Tone_GardenDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_GardenDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbfaf8' , '#505350' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#505350' , '#2b2c2a' , 240    , 237   , '' ]
let s:IA2 = [ '#505350' , '#2b2c2a' , 240    , 237   , '' ]
let s:IA3 = [ '#505350' , '#2b2c2a' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_GardenDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_GardenDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbfaf8' , '#505350' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_GardenDark#palette.accents = {
      \ 'red': [ '#1c8217' , '' , 61    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_GardenDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#dcf0db' , '#1c8217' , 231    , 61    , ''     ],
      \ [ '#fbfaf8' , '#25931f' , 231    , 63    , ''     ],
      \ [ '#1c8217' , '#fbfaf8' , 61     , 231   , 'bold' ])

