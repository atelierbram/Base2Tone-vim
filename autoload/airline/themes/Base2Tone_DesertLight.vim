scriptencoding utf-8
" Base2Tone_DesertLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_DesertLight#palette = {}

let s:N1   = [ '#847b75' , '#dcd5d0' , 244    , 253   ]
let s:N2   = [ '#bc672f' , '#cac3be' , 130    , 251   ]
let s:N3   = [ '#d37231' , '#ede7e3' , 202    , 254   ]
let g:airline#themes#Base2Tone_DesertLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_DesertLight#palette.normal_modified = {
      \ 'airline_c': [ '#bc672f' , '#cac3be' , 130    , 251    , ''     ] ,
      \ }

let s:I1 = [ '#f2ead9' , '#ac8e53' , 224    , 137   ]
let s:I2 = [ '#bc672f' , '#f29d63' , 130    , 209   ]
let s:I3 = [ '#d37231' , '#ede7e3' , 202    , 254   ]
let g:airline#themes#Base2Tone_DesertLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_DesertLight#palette.insert_modified = {
      \ 'airline_c': [ '#bc672f' , '#cac3be' , 130    , 251   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_DesertLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#5c523d' , s:I1[2] , 59    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DesertLight#palette.replace = copy(g:airline#themes#Base2Tone_DesertLight#palette.insert)
let g:airline#themes#Base2Tone_DesertLight#palette.replace.airline_a = [ s:I2[0]   , '#bc672f' , s:I2[2] , 130   , ''     ]
let g:airline#themes#Base2Tone_DesertLight#palette.replace_modified = g:airline#themes#Base2Tone_DesertLight#palette.insert_modified

let s:V1 = [ '#fbfaf9' , '#ec9255' , 231    , 208   ]
let s:V2 = [ '#bc672f' , '#f29d63' , 130    , 209   ]
let s:V3 = [ '#d37231' , '#ede7e3' , 202    , 254   ]
let g:airline#themes#Base2Tone_DesertLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_DesertLight#palette.visual_modified = {
      \ 'airline_c': [ '#bc672f' , '#cac3be' , 130    , 251   , ''     ] ,
      \ }

let s:IA1 = [ '#cac3be' , '#ede7e3' , 251    , 254   , '' ]
let s:IA2 = [ '#cac3be' , '#ede7e3' , 251    , 254   , '' ]
let s:IA3 = [ '#cac3be' , '#ede7e3' , 251    , 254   , '' ]
let g:airline#themes#Base2Tone_DesertLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_DesertLight#palette.inactive_modified = {
      \ 'airline_c': [ '#bc672f' , '#cac3be' , 130    , 251   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_DesertLight#palette.accents = {
      \ 'red': [ '#5c523d' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_DesertLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f2ead9' , '#5c523d' , 224    , 59    , ''     ],
      \ [ '#fbfaf9' , '#6e6045' , 231    , 95    , ''     ],
      \ [ '#5c523d' , '#fbfaf9' , 59     , 231   , 'bold' ])

