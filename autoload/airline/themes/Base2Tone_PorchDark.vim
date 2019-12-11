scriptencoding utf-8
" Base2Tone_PorchDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_PorchDark#palette = {}

let s:N1   = [ '#302a32' , '#716774' , 237    , 245   ]
let s:N2   = [ '#fcf9f8' , '#574e5a' , 231    , 240   ]
let s:N3   = [ '#ffc29e' , '#302a32' , 223    , 237   ]
let g:airline#themes#Base2Tone_PorchDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_PorchDark#palette.normal_modified = {
      \ 'airline_c': [ '#fcf9f8' , '#574e5a' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#302a32' , '#fcb58d' , 237    , 223   ]
let s:I2 = [ '#fcf9f8' , '#674573' , 231    , 62    ]
let s:I3 = [ '#ffc29e' , '#302a32' , 223    , 237   ]
let g:airline#themes#Base2Tone_PorchDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_PorchDark#palette.insert_modified = {
      \ 'airline_c': [ '#fcf9f8' , '#574e5a' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_PorchDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#c46731' , s:I1[2] , 178   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_PorchDark#palette.replace = copy(g:airline#themes#Base2Tone_PorchDark#palette.insert)
let g:airline#themes#Base2Tone_PorchDark#palette.replace.airline_a = [ s:I2[0]   , '#674573' , s:I2[2] , 62    , ''     ]
let g:airline#themes#Base2Tone_PorchDark#palette.replace_modified = g:airline#themes#Base2Tone_PorchDark#palette.insert_modified

let s:V1 = [ '#302a32' , '#ba95c6' , 237    , 147   ]
let s:V2 = [ '#fcf9f8' , '#674573' , 231    , 62    ]
let s:V3 = [ '#fcf9f8' , '#302a32' , 231    , 237   ]
let g:airline#themes#Base2Tone_PorchDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_PorchDark#palette.visual_modified = {
      \ 'airline_c': [ '#fcf9f8' , '#574e5a' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#574e5a' , '#302a32' , 240    , 237   , '' ]
let s:IA2 = [ '#574e5a' , '#302a32' , 240    , 237   , '' ]
let s:IA3 = [ '#574e5a' , '#302a32' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_PorchDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_PorchDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fcf9f8' , '#574e5a' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_PorchDark#palette.accents = {
      \ 'red': [ '#674573' , '' , 62    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_PorchDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f2e3f7' , '#674573' , 195    , 62    , ''     ],
      \ [ '#fcf9f8' , '#7e548c' , 231    , 63    , ''     ],
      \ [ '#674573' , '#fcf9f8' , 62     , 231   , 'bold' ])

