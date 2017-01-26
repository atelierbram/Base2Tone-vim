scriptencoding utf-8
" Base2Tone_LakeDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_LakeDark#palette = {}

let s:N1   = [ '#223c44' , '#467686' , 237    , 245   ]
let s:N2   = [ '#fafaf9' , '#335966' , 231    , 240   ]
let s:N3   = [ '#ffeb66' , '#223c44' , 221    , 237   ]
let g:airline#themes#Base2Tone_LakeDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_LakeDark#palette.normal_modified = {
      \ 'airline_c': [ '#fafaf9' , '#335966' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#223c44' , '#e9d763' , 237    , 186   ]
let s:I2 = [ '#fafaf9' , '#2f7289' , 231    , 24    ]
let s:I3 = [ '#ffeb66' , '#223c44' , 221    , 237   ]
let g:airline#themes#Base2Tone_LakeDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_LakeDark#palette.insert_modified = {
      \ 'airline_c': [ '#fafaf9' , '#335966' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_LakeDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#84740b' , s:I1[2] , 94    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LakeDark#palette.replace = copy(g:airline#themes#Base2Tone_LakeDark#palette.insert)
let g:airline#themes#Base2Tone_LakeDark#palette.replace.airline_a = [ s:I2[0]   , '#2f7289' , s:I2[2] , 24    , ''     ]
let g:airline#themes#Base2Tone_LakeDark#palette.replace_modified = g:airline#themes#Base2Tone_LakeDark#palette.insert_modified

let s:V1 = [ '#223c44' , '#62b1cb' , 237    , 74    ]
let s:V2 = [ '#fafaf9' , '#2f7289' , 231    , 24    ]
let s:V3 = [ '#fafaf9' , '#223c44' , 231    , 237   ]
let g:airline#themes#Base2Tone_LakeDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_LakeDark#palette.visual_modified = {
      \ 'airline_c': [ '#fafaf9' , '#335966' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#335966' , '#223c44' , 240    , 237   , '' ]
let s:IA2 = [ '#335966' , '#223c44' , 240    , 237   , '' ]
let s:IA3 = [ '#335966' , '#223c44' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_LakeDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_LakeDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fafaf9' , '#335966' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_LakeDark#palette.accents = {
      \ 'red': [ '#2f7289' , '' , 24    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_LakeDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#e1f7ff' , '#2f7289' , 15     , 24    , ''     ],
      \ [ '#fafaf9' , '#36829b' , 231    , 31    , ''     ],
      \ [ '#2f7289' , '#fafaf9' , 24     , 231   , 'bold' ])

