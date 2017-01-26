scriptencoding utf-8
" Base2Tone_ForestLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_ForestLight#palette = {}

let s:N1   = [ '#7d816a' , '#d7dac8' , 244    , 253   ]
let s:N2   = [ '#656b47' , '#c3c6b3' , 58     , 251   ]
let s:N3   = [ '#818b4b' , '#eaecdf' , 101    , 255   ]
let g:airline#themes#Base2Tone_ForestLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_ForestLight#palette.normal_modified = {
      \ 'airline_c': [ '#656b47' , '#c3c6b3' , 58     , 251    , ''     ] ,
      \ }

let s:I1 = [ '#f0fff0' , '#8fae8f' , 194   , 248   ]
let s:I2 = [ '#656b47' , '#cbe25a' , 58     , 155   ]
let s:I3 = [ '#818b4b' , '#eaecdf' , 101    , 255   ]
let g:airline#themes#Base2Tone_ForestLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_ForestLight#palette.insert_modified = {
      \ 'airline_c': [ '#656b47' , '#c3c6b3' , 58     , 251   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_ForestLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#435643' , s:I1[2] , 239   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_ForestLight#palette.replace = copy(g:airline#themes#Base2Tone_ForestLight#palette.insert)
let g:airline#themes#Base2Tone_ForestLight#palette.replace.airline_a = [ s:I2[0]   , '#656b47' , s:I2[2] , 58    , ''     ]
let g:airline#themes#Base2Tone_ForestLight#palette.replace_modified = g:airline#themes#Base2Tone_ForestLight#palette.insert_modified

let s:V1 = [ '#fbfbf8' , '#bfd454' , 231    , 150   ]
let s:V2 = [ '#656b47' , '#cbe25a' , 58     , 155   ]
let s:V3 = [ '#818b4b' , '#eaecdf' , 101    , 255   ]
let g:airline#themes#Base2Tone_ForestLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_ForestLight#palette.visual_modified = {
      \ 'airline_c': [ '#656b47' , '#c3c6b3' , 58     , 251   , ''     ] ,
      \ }

let s:IA1 = [ '#c3c6b3' , '#eaecdf' , 251    , 255   , '' ]
let s:IA2 = [ '#c3c6b3' , '#eaecdf' , 251    , 255   , '' ]
let s:IA3 = [ '#c3c6b3' , '#eaecdf' , 251    , 255   , '' ]
let g:airline#themes#Base2Tone_ForestLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_ForestLight#palette.inactive_modified = {
      \ 'airline_c': [ '#656b47' , '#c3c6b3' , 58     , 251   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_ForestLight#palette.accents = {
      \ 'red': [ '#435643' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_ForestLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f0fff0' , '#435643' , 194   , 239   , ''     ],
      \ [ '#fbfbf8' , '#4f634f' , 231    , 241   , ''     ],
      \ [ '#435643' , '#fbfbf8' , 239    , 231   , 'bold' ])

