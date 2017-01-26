scriptencoding utf-8
" Base2Tone_SpaceLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_SpaceLight#palette = {}

let s:N1   = [ '#7b736f' , '#d8cfcb' , 95     , 252   ]
let s:N2   = [ '#b25424' , '#c3bbb7' , 130    , 250   ]
let s:N3   = [ '#cb5c25' , '#eae4e1' , 166    , 188   ]
let g:airline#themes#Base2Tone_SpaceLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_SpaceLight#palette.normal_modified = {
      \ 'airline_c': [ '#b25424' , '#c3bbb7' , 130    , 250    , ''     ] ,
      \ }

let s:I1 = [ '#ebebff' , '#8a8aad' , 231    , 245   ]
let s:I2 = [ '#b25424' , '#f37b3f' , 130    , 172   ]
let s:I3 = [ '#cb5c25' , '#eae4e1' , 166    , 188   ]
let g:airline#themes#Base2Tone_SpaceLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_SpaceLight#palette.insert_modified = {
      \ 'airline_c': [ '#b25424' , '#c3bbb7' , 130    , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_SpaceLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#5151e6' , s:I1[2] , 61    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SpaceLight#palette.replace = copy(g:airline#themes#Base2Tone_SpaceLight#palette.insert)
let g:airline#themes#Base2Tone_SpaceLight#palette.replace.airline_a = [ s:I2[0]   , '#b25424' , s:I2[2] , 130   , ''     ]
let g:airline#themes#Base2Tone_SpaceLight#palette.replace_modified = g:airline#themes#Base2Tone_SpaceLight#palette.insert_modified

let s:V1 = [ '#fbf9f9' , '#ec7336' , 231    , 202   ]
let s:V2 = [ '#b25424' , '#f37b3f' , 130    , 172   ]
let s:V3 = [ '#cb5c25' , '#eae4e1' , 166    , 188   ]
let g:airline#themes#Base2Tone_SpaceLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_SpaceLight#palette.visual_modified = {
      \ 'airline_c': [ '#b25424' , '#c3bbb7' , 130    , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#c3bbb7' , '#eae4e1' , 250    , 188   , '' ]
let s:IA2 = [ '#c3bbb7' , '#eae4e1' , 250    , 188   , '' ]
let s:IA3 = [ '#c3bbb7' , '#eae4e1' , 250    , 188   , '' ]
let g:airline#themes#Base2Tone_SpaceLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_SpaceLight#palette.inactive_modified = {
      \ 'airline_c': [ '#b25424' , '#c3bbb7' , 130    , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SpaceLight#palette.accents = {
      \ 'red': [ '#5151e6' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_SpaceLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ebebff' , '#5151e6' , 231    , 61    , ''     ],
      \ [ '#fbf9f9' , '#6363ee' , 231    , 63    , ''     ],
      \ [ '#5151e6' , '#fbf9f9' , 61     , 231   , 'bold' ])

