scriptencoding utf-8
" Base2Tone_SeaDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_SeaDark#palette = {}

let s:N1   = [ '#27323f' , '#738191' , 237    , 245   ]
let s:N2   = [ '#f9fbfa' , '#405368' , 231    , 240   ]
let s:N3   = [ '#47ebb4' , '#27323f' , 49     , 237   ]
let g:airline#themes#Base2Tone_SeaDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_SeaDark#palette.normal_modified = {
      \ 'airline_c': [ '#f9fbfa' , '#405368' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#27323f' , '#2aeaaa' , 237    , 79    ]
let s:I2 = [ '#f9fbfa' , '#004a9e' , 231    , 25    ]
let s:I3 = [ '#47ebb4' , '#27323f' , 49     , 237   ]
let g:airline#themes#Base2Tone_SeaDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_SeaDark#palette.insert_modified = {
      \ 'airline_c': [ '#f9fbfa' , '#405368' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_SeaDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#067953' , s:I1[2] , 22    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SeaDark#palette.replace = copy(g:airline#themes#Base2Tone_SeaDark#palette.insert)
let g:airline#themes#Base2Tone_SeaDark#palette.replace.airline_a = [ s:I2[0]   , '#004a9e' , s:I2[2] , 25    , ''     ]
let g:airline#themes#Base2Tone_SeaDark#palette.replace_modified = g:airline#themes#Base2Tone_SeaDark#palette.insert_modified

let s:V1 = [ '#27323f' , '#6e9bcf' , 237    , 247   ]
let s:V2 = [ '#f9fbfa' , '#004a9e' , 231    , 25    ]
let s:V3 = [ '#f9fbfa' , '#27323f' , 231    , 237   ]
let g:airline#themes#Base2Tone_SeaDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_SeaDark#palette.visual_modified = {
      \ 'airline_c': [ '#f9fbfa' , '#405368' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#405368' , '#27323f' , 240    , 237   , '' ]
let s:IA2 = [ '#405368' , '#27323f' , 240    , 237   , '' ]
let s:IA3 = [ '#405368' , '#27323f' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_SeaDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_SeaDark#palette.inactive_modified = {
      \ 'airline_c': [ '#f9fbfa' , '#405368' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_SeaDark#palette.accents = {
      \ 'red': [ '#004a9e' , '' , 25    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_SeaDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#ebf4ff' , '#004a9e' , 195    , 25    , ''     ],
      \ [ '#f9fbfa' , '#1757a1' , 231    , 25    , ''     ],
      \ [ '#004a9e' , '#f9fbfa' , 25     , 231   , 'bold' ])

