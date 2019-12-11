scriptencoding utf-8
" Base2Tone_FieldDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_FieldDark#palette = {}

let s:N1   = [ '#242e2c' , '#667a77' , 237    , 245   ]
let s:N2   = [ '#f9fbfa' , '#42524f' , 231    , 240   ]
let s:N3   = [ '#85ffb8' , '#242e2c' , 192    , 237   ]
let g:airline#themes#Base2Tone_FieldDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_FieldDark#palette.normal_modified = {
      \ 'airline_c': [ '#f9fbfa' , '#42524f' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#242e2c' , '#69f7a4' , 237    , 191   ]
let s:I2 = [ '#f9fbfa' , '#037764' , 231    , 239   ]
let s:I3 = [ '#85ffb8' , '#242e2c' , 192    , 237   ]
let g:airline#themes#Base2Tone_FieldDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_FieldDark#palette.insert_modified = {
      \ 'airline_c': [ '#f9fbfa' , '#42524f' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_FieldDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#00943e' , s:I1[2] , 58    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_FieldDark#palette.replace = copy(g:airline#themes#Base2Tone_FieldDark#palette.insert)
let g:airline#themes#Base2Tone_FieldDark#palette.replace.airline_a = [ s:I2[0]   , '#037764' , s:I2[2] , 239   , ''     ]
let g:airline#themes#Base2Tone_FieldDark#palette.replace_modified = g:airline#themes#Base2Tone_FieldDark#palette.insert_modified

let s:V1 = [ '#242e2c' , '#40ddc3' , 237    , 248   ]
let s:V2 = [ '#f9fbfa' , '#037764' , 231    , 239   ]
let s:V3 = [ '#f9fbfa' , '#242e2c' , 231    , 237   ]
let g:airline#themes#Base2Tone_FieldDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_FieldDark#palette.visual_modified = {
      \ 'airline_c': [ '#f9fbfa' , '#42524f' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#42524f' , '#242e2c' , 240    , 237   , '' ]
let s:IA2 = [ '#42524f' , '#242e2c' , 240    , 237   , '' ]
let s:IA3 = [ '#42524f' , '#242e2c' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_FieldDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_FieldDark#palette.inactive_modified = {
      \ 'airline_c': [ '#f9fbfa' , '#42524f' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_FieldDark#palette.accents = {
      \ 'red': [ '#037764' , '' , 239   , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_FieldDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#a8fff1' , '#037764' , 194   , 239   , ''     ],
      \ [ '#f9fbfa' , '#089b83' , 231    , 241   , ''     ],
      \ [ '#037764' , '#f9fbfa' , 239    , 231   , 'bold' ])

