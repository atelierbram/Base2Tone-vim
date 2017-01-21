scriptencoding utf-8
" Base2Tone_EveningDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_EveningDark#palette = {}

let s:N1   = [ '#363342' , '#787391' , 17  , 190 ]
let s:N2   = [ '#fbfaf9' , '#545167' , 255 , 238 ]
let s:N3   = [ '#ffcc99' , '#363342' , 85  , 234 ]
let g:airline#themes#Base2Tone_EveningDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_EveningDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#545167' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#363342' , '#ffc285' , 17  , 45  ]
let s:I2 = [ '#fbfaf9' , '#6a51e6' , 255 , 27  ]
let s:I3 = [ '#ffcc99' , '#363342' , 15  , 17  ]
let g:airline#themes#Base2Tone_EveningDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_EveningDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#545167' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_EveningDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#b37537' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_EveningDark#palette.replace = copy(g:airline#themes#Base2Tone_EveningDark#palette.insert)
let g:airline#themes#Base2Tone_EveningDark#palette.replace.airline_a = [ s:I2[0]   , '#6a51e6' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_EveningDark#palette.replace_modified = g:airline#themes#Base2Tone_EveningDark#palette.insert_modified

let s:V1 = [ '#363342' , '#afa0fe' , 232 , 214 ]
let s:V2 = [ '#fbfaf9' , '#6a51e6' , 232 , 202 ]
let s:V3 = [ '#fbfaf9' , '#363342' , 15  , 52  ]
let g:airline#themes#Base2Tone_EveningDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_EveningDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#545167' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#545167' , '#363342' , 239 , 234 , '' ]
let s:IA2 = [ '#545167' , '#363342' , 239 , 235 , '' ]
let s:IA3 = [ '#545167' , '#363342' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_EveningDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_EveningDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#545167' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_EveningDark#palette.accents = {
      \ 'red': [ '#6a51e6' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_EveningDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#eeebff' , '#6a51e6' , 189 , 55  , ''     ],
      \ [ '#fbfaf9' , '#7a63ee' , 231 , 98  , ''     ],
      \ [ '#6a51e6' , '#fbfaf9' , 55  , 231 , 'bold' ])

