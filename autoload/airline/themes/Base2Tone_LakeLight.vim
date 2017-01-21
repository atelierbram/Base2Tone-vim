scriptencoding utf-8
" Base2Tone_LakeLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_LakeLight#palette = {}

let s:N1   = [ '#7a7971' , '#d5d4cd' , 17  , 190 ]
let s:N2   = [ '#84740b' , '#c2c1b7' , 255 , 238 ]
let s:N3   = [ '#978611' , '#e8e7e3' , 85  , 234 ]
let g:airline#themes#Base2Tone_LakeLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_LakeLight#palette.normal_modified = {
      \ 'airline_c': [ '#84740b' , '#c2c1b7' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#e1f7ff' , '#62b1cb' , 17  , 45  ]
let s:I2 = [ '#84740b' , '#d6c65c' , 255 , 27  ]
let s:I3 = [ '#978611' , '#e8e7e3' , 15  , 17  ]
let g:airline#themes#Base2Tone_LakeLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_LakeLight#palette.insert_modified = {
      \ 'airline_c': [ '#84740b' , '#c2c1b7' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_LakeLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#2f7289' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LakeLight#palette.replace = copy(g:airline#themes#Base2Tone_LakeLight#palette.insert)
let g:airline#themes#Base2Tone_LakeLight#palette.replace.airline_a = [ s:I2[0]   , '#84740b' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_LakeLight#palette.replace_modified = g:airline#themes#Base2Tone_LakeLight#palette.insert_modified

let s:V1 = [ '#fafaf9' , '#cbbb4d' , 232 , 214 ]
let s:V2 = [ '#84740b' , '#d6c65c' , 232 , 202 ]
let s:V3 = [ '#978611' , '#e8e7e3' , 15  , 52  ]
let g:airline#themes#Base2Tone_LakeLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_LakeLight#palette.visual_modified = {
      \ 'airline_c': [ '#84740b' , '#c2c1b7' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#c2c1b7' , '#e8e7e3' , 239 , 234 , '' ]
let s:IA2 = [ '#c2c1b7' , '#e8e7e3' , 239 , 235 , '' ]
let s:IA3 = [ '#c2c1b7' , '#e8e7e3' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_LakeLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_LakeLight#palette.inactive_modified = {
      \ 'airline_c': [ '#84740b' , '#c2c1b7' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LakeLight#palette.accents = {
      \ 'red': [ '#2f7289' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_LakeLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#e1f7ff' , '#2f7289' , 189 , 55  , ''     ],
      \ [ '#fafaf9' , '#36829b' , 231 , 98  , ''     ],
      \ [ '#2f7289' , '#fafaf9' , 55  , 231 , 'bold' ])

