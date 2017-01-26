scriptencoding utf-8
" Base2Tone_HeathLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_HeathLight#palette = {}

let s:N1   = [ '#787673' , '#d6d2cc' , 243    , 252   ]
let s:N2   = [ '#995900' , '#c1bdb9' , 130    , 251   ]
let s:N3   = [ '#aa6709' , '#eae6e1' , 130    , 254   ]
let g:airline#themes#Base2Tone_HeathLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_HeathLight#palette.normal_modified = {
      \ 'airline_c': [ '#995900' , '#c1bdb9' , 130    , 251    , ''     ] ,
      \ }

let s:I1 = [ '#fdebff' , '#cb79d2' , 231    , 176   ]
let s:I2 = [ '#995900' , '#d9b98c' , 130    , 180   ]
let s:I3 = [ '#aa6709' , '#eae6e1' , 130    , 254   ]
let g:airline#themes#Base2Tone_HeathLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_HeathLight#palette.insert_modified = {
      \ 'airline_c': [ '#995900' , '#c1bdb9' , 130    , 251   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_HeathLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#a21fad' , s:I1[2] , 127   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_HeathLight#palette.replace = copy(g:airline#themes#Base2Tone_HeathLight#palette.insert)
let g:airline#themes#Base2Tone_HeathLight#palette.replace.airline_a = [ s:I2[0]   , '#995900' , s:I2[2] , 130   , ''     ]
let g:airline#themes#Base2Tone_HeathLight#palette.replace_modified = g:airline#themes#Base2Tone_HeathLight#palette.insert_modified

let s:V1 = [ '#fbfaf9' , '#cc8c33' , 231    , 172   ]
let s:V2 = [ '#995900' , '#d9b98c' , 130    , 180   ]
let s:V3 = [ '#aa6709' , '#eae6e1' , 130    , 254   ]
let g:airline#themes#Base2Tone_HeathLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_HeathLight#palette.visual_modified = {
      \ 'airline_c': [ '#995900' , '#c1bdb9' , 130    , 251   , ''     ] ,
      \ }

let s:IA1 = [ '#c1bdb9' , '#eae6e1' , 251    , 254   , '' ]
let s:IA2 = [ '#c1bdb9' , '#eae6e1' , 251    , 254   , '' ]
let s:IA3 = [ '#c1bdb9' , '#eae6e1' , 251    , 254   , '' ]
let g:airline#themes#Base2Tone_HeathLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_HeathLight#palette.inactive_modified = {
      \ 'airline_c': [ '#995900' , '#c1bdb9' , 130    , 251   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_HeathLight#palette.accents = {
      \ 'red': [ '#a21fad' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_HeathLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#fdebff' , '#a21fad' , 231    , 127   , ''     ],
      \ [ '#fbfaf9' , '#845e87' , 231    , 96    , ''     ],
      \ [ '#a21fad' , '#fbfaf9' , 127    , 231   , 'bold' ])

