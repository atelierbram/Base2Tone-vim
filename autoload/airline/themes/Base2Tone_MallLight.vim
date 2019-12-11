scriptencoding utf-8
" Base2Tone_MallLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_MallLight#palette = {}

let s:N1   = [ '#6d767e' , '#c8d2da' , 102    , 252   ]
let s:N2   = [ '#3692e2' , '#b5bdc4' , 31     , 250   ]
let s:N3   = [ '#479eeb' , '#dee6ed' , 38     , 254   ]
let g:airline#themes#Base2Tone_MallLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_MallLight#palette.normal_modified = {
      \ 'airline_c': [ '#3692e2' , '#b5bdc4' , 31     , 250    , ''     ] ,
      \ }

let s:I1 = [ '#f4f0ff' , '#c5adff' , 189    , 146   ]
let s:I2 = [ '#3692e2' , '#8ac8ff' , 31     , 51    ]
let s:I3 = [ '#479eeb' , '#dee6ed' , 38     , 254   ]
let g:airline#themes#Base2Tone_MallLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_MallLight#palette.insert_modified = {
      \ 'airline_c': [ '#3692e2' , '#b5bdc4' , 31     , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_MallLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#855ee8' , s:I1[2] , 62    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MallLight#palette.replace = copy(g:airline#themes#Base2Tone_MallLight#palette.insert)
let g:airline#themes#Base2Tone_MallLight#palette.replace.airline_a = [ s:I2[0]   , '#3692e2' , s:I2[2] , 31    , ''     ]
let g:airline#themes#Base2Tone_MallLight#palette.replace_modified = g:airline#themes#Base2Tone_MallLight#palette.insert_modified

let s:V1 = [ '#f8fafc' , '#75bfff' , 231    , 45    ]
let s:V2 = [ '#3692e2' , '#8ac8ff' , 31     , 51    ]
let s:V3 = [ '#479eeb' , '#dee6ed' , 38     , 254   ]
let g:airline#themes#Base2Tone_MallLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_MallLight#palette.visual_modified = {
      \ 'airline_c': [ '#3692e2' , '#b5bdc4' , 31     , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#b5bdc4' , '#dee6ed' , 250    , 254   , '' ]
let s:IA2 = [ '#b5bdc4' , '#dee6ed' , 250    , 254   , '' ]
let s:IA3 = [ '#b5bdc4' , '#dee6ed' , 250    , 254   , '' ]
let g:airline#themes#Base2Tone_MallLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_MallLight#palette.inactive_modified = {
      \ 'airline_c': [ '#3692e2' , '#b5bdc4' , 31     , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MallLight#palette.accents = {
      \ 'red': [ '#855ee8' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_MallLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f4f0ff' , '#855ee8' , 189    , 62    , ''     ],
      \ [ '#f8fafc' , '#936df3' , 231    , 62    , ''     ],
      \ [ '#855ee8' , '#f8fafc' , 62     , 231   , 'bold' ])

