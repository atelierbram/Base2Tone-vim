scriptencoding utf-8
" Base2Tone_SuburbLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_SuburbLight#palette = {}

let s:N1   = [ '#7a7175' , '#d7cbd0' , 243    , 252   ]
let s:N2   = [ '#d14781' , '#c2b7bc' , 167    , 250   ]
let s:N3   = [ '#e44e8c' , '#eae1e5' , 167    , 254   ]
let g:airline#themes#Base2Tone_SuburbLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_SuburbLight#palette.normal_modified = {
      \ 'airline_c': [ '#d14781' , '#c2b7bc' , 167    , 250    , ''     ] ,
      \ }

let s:I1 = [ '#ebedff' , '#a0acfe' , 231    , 147   ]
let s:I2 = [ '#d14781' , '#fe81b5' , 167    , 210   ]
let s:I3 = [ '#e44e8c' , '#eae1e5' , 167    , 254   ]
let g:airline#themes#Base2Tone_SuburbLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_SuburbLight#palette.insert_modified = {
      \ 'airline_c': [ '#d14781' , '#c2b7bc' , 167    , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_SuburbLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#5165e6' , s:I1[2] , 98    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SuburbLight#palette.replace = copy(g:airline#themes#Base2Tone_SuburbLight#palette.insert)
let g:airline#themes#Base2Tone_SuburbLight#palette.replace.airline_a = [ s:I2[0]   , '#d14781' , s:I2[2] , 167   , ''     ]
let g:airline#themes#Base2Tone_SuburbLight#palette.replace_modified = g:airline#themes#Base2Tone_SuburbLight#palette.insert_modified

let s:V1 = [ '#fbf9fa' , '#fb6fa9' , 231    , 210   ]
let s:V2 = [ '#d14781' , '#fe81b5' , 167    , 210   ]
let s:V3 = [ '#e44e8c' , '#eae1e5' , 167    , 254   ]
let g:airline#themes#Base2Tone_SuburbLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_SuburbLight#palette.visual_modified = {
      \ 'airline_c': [ '#d14781' , '#c2b7bc' , 167    , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#c2b7bc' , '#eae1e5' , 250    , 254   , '' ]
let s:IA2 = [ '#c2b7bc' , '#eae1e5' , 250    , 254   , '' ]
let s:IA3 = [ '#c2b7bc' , '#eae1e5' , 250    , 254   , '' ]
let g:airline#themes#Base2Tone_SuburbLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_SuburbLight#palette.inactive_modified = {
      \ 'airline_c': [ '#d14781' , '#c2b7bc' , 167    , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SuburbLight#palette.accents = {
      \ 'red': [ '#5165e6' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_SuburbLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ebedff' , '#5165e6' , 231    , 98    , ''     ],
      \ [ '#fbf9fa' , '#6375ee' , 231    , 135   , ''     ],
      \ [ '#5165e6' , '#fbf9fa' , 98     , 231   , 'bold' ])

