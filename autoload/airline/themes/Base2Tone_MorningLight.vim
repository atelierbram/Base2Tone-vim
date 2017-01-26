scriptencoding utf-8
" Base2Tone_MorningLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_MorningLight#palette = {}

let s:N1   = [ '#544d40' , '#cdc4b1' , 238    , 250   ]
let s:N2   = [ '#2d2006' , '#b6ad9a' , 234    , 145   ]
let s:N3   = [ '#594212' , '#e3dcce' , 237    , 188   ]
let g:airline#themes#Base2Tone_MorningLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_MorningLight#palette.normal_modified = {
      \ 'airline_c': [ '#2d2006' , '#b6ad9a' , 234    , 145    , ''     ] ,
      \ }

let s:I1 = [ '#dee6f7' , '#728fcb' , 255    , 68    ]
let s:I2 = [ '#2d2006' , '#c6b28b' , 234    , 249   ]
let s:I3 = [ '#594212' , '#e3dcce' , 237    , 188   ]
let g:airline#themes#Base2Tone_MorningLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_MorningLight#palette.insert_modified = {
      \ 'airline_c': [ '#2d2006' , '#b6ad9a' , 234    , 145   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_MorningLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#063289' , s:I1[2] , 18    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MorningLight#palette.replace = copy(g:airline#themes#Base2Tone_MorningLight#palette.insert)
let g:airline#themes#Base2Tone_MorningLight#palette.replace.airline_a = [ s:I2[0]   , '#2d2006' , s:I2[2] , 234   , ''     ]
let g:airline#themes#Base2Tone_MorningLight#palette.replace_modified = g:airline#themes#Base2Tone_MorningLight#palette.insert_modified

let s:V1 = [ '#faf8f5' , '#b29762' , 230    , 136   ]
let s:V2 = [ '#2d2006' , '#c6b28b' , 234    , 249   ]
let s:V3 = [ '#594212' , '#e3dcce' , 237    , 188   ]
let g:airline#themes#Base2Tone_MorningLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_MorningLight#palette.visual_modified = {
      \ 'airline_c': [ '#2d2006' , '#b6ad9a' , 234    , 145   , ''     ] ,
      \ }

let s:IA1 = [ '#b6ad9a' , '#e3dcce' , 145    , 188   , '' ]
let s:IA2 = [ '#b6ad9a' , '#e3dcce' , 145    , 188   , '' ]
let s:IA3 = [ '#b6ad9a' , '#e3dcce' , 145    , 188   , '' ]
let g:airline#themes#Base2Tone_MorningLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_MorningLight#palette.inactive_modified = {
      \ 'airline_c': [ '#2d2006' , '#b6ad9a' , 234    , 145   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MorningLight#palette.accents = {
      \ 'red': [ '#063289' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_MorningLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#dee6f7' , '#063289' , 255    , 18    , ''     ],
      \ [ '#faf8f5' , '#0b3c9d' , 230    , 21    , ''     ],
      \ [ '#063289' , '#faf8f5' , 18     , 230   , 'bold' ])

