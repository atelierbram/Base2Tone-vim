scriptencoding utf-8
" Base2Tone_LakeLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_LakeLight#palette = {}

let s:N1   = [ '#7a7971' , '#d5d4cd' , 244    , 252   ]
let s:N2   = [ '#84740b' , '#c2c1b7' , 94     , 251   ]
let s:N3   = [ '#978611' , '#e8e7e3' , 100    , 254   ]
let g:airline#themes#Base2Tone_LakeLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_LakeLight#palette.normal_modified = {
      \ 'airline_c': [ '#84740b' , '#c2c1b7' , 94     , 251    , ''     ] ,
      \ }

let s:I1 = [ '#e1f7ff' , '#62b1cb' , 15     , 74    ]
let s:I2 = [ '#84740b' , '#d6c65c' , 94     , 144   ]
let s:I3 = [ '#978611' , '#e8e7e3' , 100    , 254   ]
let g:airline#themes#Base2Tone_LakeLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_LakeLight#palette.insert_modified = {
      \ 'airline_c': [ '#84740b' , '#c2c1b7' , 94     , 251   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_LakeLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#2f7289' , s:I1[2] , 24    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LakeLight#palette.replace = copy(g:airline#themes#Base2Tone_LakeLight#palette.insert)
let g:airline#themes#Base2Tone_LakeLight#palette.replace.airline_a = [ s:I2[0]   , '#84740b' , s:I2[2] , 94    , ''     ]
let g:airline#themes#Base2Tone_LakeLight#palette.replace_modified = g:airline#themes#Base2Tone_LakeLight#palette.insert_modified

let s:V1 = [ '#fafaf9' , '#cbbb4d' , 231    , 144   ]
let s:V2 = [ '#84740b' , '#d6c65c' , 94     , 144   ]
let s:V3 = [ '#978611' , '#e8e7e3' , 100    , 254   ]
let g:airline#themes#Base2Tone_LakeLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_LakeLight#palette.visual_modified = {
      \ 'airline_c': [ '#84740b' , '#c2c1b7' , 94     , 251   , ''     ] ,
      \ }

let s:IA1 = [ '#c2c1b7' , '#e8e7e3' , 251    , 254   , '' ]
let s:IA2 = [ '#c2c1b7' , '#e8e7e3' , 251    , 254   , '' ]
let s:IA3 = [ '#c2c1b7' , '#e8e7e3' , 251    , 254   , '' ]
let g:airline#themes#Base2Tone_LakeLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_LakeLight#palette.inactive_modified = {
      \ 'airline_c': [ '#84740b' , '#c2c1b7' , 94     , 251   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LakeLight#palette.accents = {
      \ 'red': [ '#2f7289' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_LakeLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#e1f7ff' , '#2f7289' , 15     , 24    , ''     ],
      \ [ '#fafaf9' , '#36829b' , 231    , 31    , ''     ],
      \ [ '#2f7289' , '#fafaf9' , 24     , 231   , 'bold' ])

