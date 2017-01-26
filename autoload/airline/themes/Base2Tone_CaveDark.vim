scriptencoding utf-8
" Base2Tone_CaveDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_CaveDark#palette = {}

let s:N1   = [ '#2f2d2e' , '#706b6d' , 237    , 245   ]
let s:N2   = [ '#fbfaf9' , '#565254' , 231    , 240   ]
let s:N3   = [ '#ffcc4d' , '#2f2d2e' , 222    , 237   ]
let g:airline#themes#Base2Tone_CaveDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_CaveDark#palette.normal_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#565254' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#2f2d2e' , '#ebbc47' , 237    , 179   ]
let s:I2 = [ '#fbfaf9' , '#ad1f51' , 231    , 125   ]
let s:I3 = [ '#ffcc4d' , '#2f2d2e' , 222    , 237   ]
let g:airline#themes#Base2Tone_CaveDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_CaveDark#palette.insert_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#565254' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_CaveDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#996e00' , s:I1[2] , 94    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_CaveDark#palette.replace = copy(g:airline#themes#Base2Tone_CaveDark#palette.insert)
let g:airline#themes#Base2Tone_CaveDark#palette.replace.airline_a = [ s:I2[0]   , '#ad1f51' , s:I2[2] , 125   , ''     ]
let g:airline#themes#Base2Tone_CaveDark#palette.replace_modified = g:airline#themes#Base2Tone_CaveDark#palette.insert_modified

let s:V1 = [ '#2f2d2e' , '#d27998' , 237    , 175   ]
let s:V2 = [ '#fbfaf9' , '#ad1f51' , 231    , 125   ]
let s:V3 = [ '#fbfaf9' , '#2f2d2e' , 231    , 237   ]
let g:airline#themes#Base2Tone_CaveDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_CaveDark#palette.visual_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#565254' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#565254' , '#2f2d2e' , 240    , 237   , '' ]
let s:IA2 = [ '#565254' , '#2f2d2e' , 240    , 237   , '' ]
let s:IA3 = [ '#565254' , '#2f2d2e' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_CaveDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_CaveDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fbfaf9' , '#565254' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_CaveDark#palette.accents = {
      \ 'red': [ '#ad1f51' , '' , 125   , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_CaveDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ffebf2' , '#ad1f51' , 231    , 125   , ''     ],
      \ [ '#fbfaf9' , '#875e6d' , 231    , 95    , ''     ],
      \ [ '#ad1f51' , '#fbfaf9' , 125    , 231   , 'bold' ])

