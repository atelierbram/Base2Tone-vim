scriptencoding utf-8
" Base2Tone_FieldLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_FieldLight#palette = {}

let s:N1   = [ '#68736d' , '#c7d1cb' , 244    , 253   ]
let s:N2   = [ '#00943e' , '#aebcb4' , 58     , 251   ]
let s:N3   = [ '#0eaa4f' , '#e3e8e5' , 101    , 255   ]
let g:airline#themes#Base2Tone_FieldLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_FieldLight#palette.normal_modified = {
      \ 'airline_c': [ '#00943e' , '#aebcb4' , 58     , 251    , ''     ] ,
      \ }

let s:I1 = [ '#a8fff1' , '#40ddc3' , 194   , 248   ]
let s:I2 = [ '#00943e' , '#55ec94' , 58     , 155   ]
let s:I3 = [ '#0eaa4f' , '#e3e8e5' , 101    , 255   ]
let g:airline#themes#Base2Tone_FieldLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_FieldLight#palette.insert_modified = {
      \ 'airline_c': [ '#00943e' , '#aebcb4' , 58     , 251   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_FieldLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#037764' , s:I1[2] , 239   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_FieldLight#palette.replace = copy(g:airline#themes#Base2Tone_FieldLight#palette.insert)
let g:airline#themes#Base2Tone_FieldLight#palette.replace.airline_a = [ s:I2[0]   , '#00943e' , s:I2[2] , 58    , ''     ]
let g:airline#themes#Base2Tone_FieldLight#palette.replace_modified = g:airline#themes#Base2Tone_FieldLight#palette.insert_modified

let s:V1 = [ '#f9fbfa' , '#3be381' , 231    , 150   ]
let s:V2 = [ '#00943e' , '#55ec94' , 58     , 155   ]
let s:V3 = [ '#0eaa4f' , '#e3e8e5' , 101    , 255   ]
let g:airline#themes#Base2Tone_FieldLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_FieldLight#palette.visual_modified = {
      \ 'airline_c': [ '#00943e' , '#aebcb4' , 58     , 251   , ''     ] ,
      \ }

let s:IA1 = [ '#aebcb4' , '#e3e8e5' , 251    , 255   , '' ]
let s:IA2 = [ '#aebcb4' , '#e3e8e5' , 251    , 255   , '' ]
let s:IA3 = [ '#aebcb4' , '#e3e8e5' , 251    , 255   , '' ]
let g:airline#themes#Base2Tone_FieldLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_FieldLight#palette.inactive_modified = {
      \ 'airline_c': [ '#00943e' , '#aebcb4' , 58     , 251   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_FieldLight#palette.accents = {
      \ 'red': [ '#037764' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_FieldLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#a8fff1' , '#037764' , 194   , 239   , ''     ],
      \ [ '#f9fbfa' , '#089b83' , 231    , 241   , ''     ],
      \ [ '#037764' , '#f9fbfa' , 239    , 231   , 'bold' ])

