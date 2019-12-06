scriptencoding utf-8
" Base2Tone_GardenLight (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_GardenLight#palette = {}

let s:N1   = [ '#837467' , '#dbd0c7' , 95     , 252   ]
let s:N2   = [ '#bd5d0f' , '#c7bcb2' , 130    , 250   ]
let s:N3   = [ '#c96a1d' , '#ece5df' , 166    , 188   ]
let g:airline#themes#Base2Tone_GardenLight#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_GardenLight#palette.normal_modified = {
      \ 'airline_c': [ '#bd5d0f' , '#c7bcb2' , 130    , 250    , ''     ] ,
      \ }

let s:I1 = [ '#dcf0db' , '#6bcc66' , 231    , 245   ]
let s:I2 = [ '#bd5d0f' , '#dba070' , 130    , 172   ]
let s:I3 = [ '#c96a1d' , '#ece5df' , 166    , 188   ]
let g:airline#themes#Base2Tone_GardenLight#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_GardenLight#palette.insert_modified = {
      \ 'airline_c': [ '#bd5d0f' , '#c7bcb2' , 130    , 250   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_GardenLight#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#1c8217' , s:I1[2] , 61    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_GardenLight#palette.replace = copy(g:airline#themes#Base2Tone_GardenLight#palette.insert)
let g:airline#themes#Base2Tone_GardenLight#palette.replace.airline_a = [ s:I2[0]   , '#bd5d0f' , s:I2[2] , 130   , ''     ]
let g:airline#themes#Base2Tone_GardenLight#palette.replace_modified = g:airline#themes#Base2Tone_GardenLight#palette.insert_modified

let s:V1 = [ '#fbfaf8' , '#db9257' , 231    , 202   ]
let s:V2 = [ '#bd5d0f' , '#dba070' , 130    , 172   ]
let s:V3 = [ '#c96a1d' , '#ece5df' , 166    , 188   ]
let g:airline#themes#Base2Tone_GardenLight#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_GardenLight#palette.visual_modified = {
      \ 'airline_c': [ '#bd5d0f' , '#c7bcb2' , 130    , 250   , ''     ] ,
      \ }

let s:IA1 = [ '#c7bcb2' , '#ece5df' , 250    , 188   , '' ]
let s:IA2 = [ '#c7bcb2' , '#ece5df' , 250    , 188   , '' ]
let s:IA3 = [ '#c7bcb2' , '#ece5df' , 250    , 188   , '' ]
let g:airline#themes#Base2Tone_GardenLight#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_GardenLight#palette.inactive_modified = {
      \ 'airline_c': [ '#bd5d0f' , '#c7bcb2' , 130    , 250   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_GardenLight#palette.accents = {
      \ 'red': [ '#1c8217' , '' , 160 , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_GardenLight#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#dcf0db' , '#1c8217' , 231    , 61    , ''     ],
      \ [ '#fbfaf8' , '#25931f' , 231    , 63    , ''     ],
      \ [ '#1c8217' , '#fbfaf8' , 61     , 231   , 'bold' ])

