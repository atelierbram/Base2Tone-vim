scriptencoding utf-8
" Base2Tone_MeadowLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_MeadowLight#palette = {}

let s:N1   = [ '#757b6f' , '#d1d6cd' , 17  , 190 ]
let s:N2   = [ '#4d8217' , '#bdc3b7' , 255 , 238 ]
let s:N3   = [ '#59931f' , '#e6e8e3' , 85  , 234 ]
let g:airline#themes#Base2Tone_MeadowLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_MeadowLight#palette.normal_modified = {
      \ 'airline_c': [ '#4d8217' , '#bdc3b7' , 255     , 53      , ''     ] ,
      \ }

let s:I1 = [ '#d1ecff' , '#47adf5' , 17  , 45  ]
let s:I2 = [ '#4d8217' , '#8cdd3c' , 255 , 27  ]
let s:I3 = [ '#59931f' , '#e6e8e3' , 15  , 17  ]
let g:airline#themes#Base2Tone_MeadowLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_MeadowLight#palette.insert_modified = {
      \ 'airline_c': [ '#4d8217' , '#bdc3b7' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_MeadowLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#1b6498' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MeadowLight#palette.replace = copy(g:airline#themes#Base2Tone_MeadowLight#palette.insert)
let g:airline#themes#Base2Tone_MeadowLight#palette.replace.airline_a = [ s:I2[0]   , '#4d8217' , s:I2[2] , 124     , ''     ]
let g:airline#themes#Base2Tone_MeadowLight#palette.replace_modified = g:airline#themes#Base2Tone_MeadowLight#palette.insert_modified

let s:V1 = [ '#fafbf9' , '#80bf40' , 232 , 214 ]
let s:V2 = [ '#4d8217' , '#8cdd3c' , 232 , 202 ]
let s:V3 = [ '#59931f' , '#e6e8e3' , 15  , 52  ]
let g:airline#themes#Base2Tone_MeadowLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_MeadowLight#palette.visual_modified = {
      \ 'airline_c': [ '#4d8217' , '#bdc3b7' , 255     , 53      , ''     ] ,
      \ }

let s:IA1 = [ '#bdc3b7' , '#e6e8e3' , 239 , 234 , '' ]
let s:IA2 = [ '#bdc3b7' , '#e6e8e3' , 239 , 235 , '' ]
let s:IA3 = [ '#bdc3b7' , '#e6e8e3' , 239 , 236 , '' ]
let g:airline#themes#Base2Tone_MeadowLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_MeadowLight#palette.inactive_modified = {
      \ 'airline_c': [ '#4d8217' , '#bdc3b7' , 255     , 53      , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MeadowLight#palette.accents = {
      \ 'red': [ '#1b6498' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_MeadowLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d1ecff' , '#1b6498' , 189 , 55  , ''     ],
      \ [ '#fafbf9' , '#2172ab' , 231 , 98  , ''     ],
      \ [ '#1b6498' , '#fafbf9' , 55  , 231 , 'bold' ])

