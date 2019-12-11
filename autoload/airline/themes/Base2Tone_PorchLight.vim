scriptencoding utf-8
" Base2Tone_PorchLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_PorchLight#palette = {}

let s:N1   = [ '#7e736d' , '#dacfc8' , 101    , 187   ]
let s:N2   = [ '#c46731' , '#c4bbb5' , 178    , 250   ]
let s:N3   = [ '#d97136' , '#ede3de' , 214    , 188   ]
let g:airline#themes#Base2Tone_PorchLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_PorchLight#palette.normal_modified = {
      \ 'airline_c': [ '#c46731' , '#c4bbb5' , 178    , 250    , ''     ] ,
      \ }

let s:I1 = [ '#f2e3f7' , '#ba95c6' , 195    , 147   ]
let s:I2 = [ '#c46731' , '#f8aa7c' , 178    , 221   ]
let s:I3 = [ '#d97136' , '#ede3de' , 214    , 188   ]
let g:airline#themes#Base2Tone_PorchLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_PorchLight#palette.insert_modified = {
      \ 'airline_c': [ '#c46731' , '#c4bbb5' , 178    , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_PorchLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#674573' , s:I1[2] , 62    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_PorchLight#palette.replace = copy(g:airline#themes#Base2Tone_PorchLight#palette.insert)
let g:airline#themes#Base2Tone_PorchLight#palette.replace.airline_a = [ s:I2[0]   , '#c46731' , s:I2[2] , 178   , ''     ]
let g:airline#themes#Base2Tone_PorchLight#palette.replace_modified = g:airline#themes#Base2Tone_PorchLight#palette.insert_modified

let s:V1 = [ '#fcf9f8' , '#f39b68' , 231    , 220   ]
let s:V2 = [ '#c46731' , '#f8aa7c' , 178    , 221   ]
let s:V3 = [ '#d97136' , '#ede3de' , 214    , 188   ]
let g:airline#themes#Base2Tone_PorchLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_PorchLight#palette.visual_modified = {
      \ 'airline_c': [ '#c46731' , '#c4bbb5' , 178    , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#c4bbb5' , '#ede3de' , 250    , 188   , '' ]
let s:IA2 = [ '#c4bbb5' , '#ede3de' , 250    , 188   , '' ]
let s:IA3 = [ '#c4bbb5' , '#ede3de' , 250    , 188   , '' ]
let g:airline#themes#Base2Tone_PorchLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_PorchLight#palette.inactive_modified = {
      \ 'airline_c': [ '#c46731' , '#c4bbb5' , 178    , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_PorchLight#palette.accents = {
      \ 'red': [ '#674573' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_PorchLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f2e3f7' , '#674573' , 195    , 62    , ''     ],
      \ [ '#fcf9f8' , '#7e548c' , 231    , 63    , ''     ],
      \ [ '#674573' , '#fcf9f8' , 62     , 231   , 'bold' ])

