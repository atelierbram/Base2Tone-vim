scriptencoding utf-8
" Base2Tone_MeadowDark (https://github.com/atelierbram/Base2Tone-vim-airline)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)

let g:airline#themes#Base2Tone_MeadowDark#palette = {}

let s:N1   = [ '#223644' , '#466b86' , 237    , 245   ]
let s:N2   = [ '#fafbf9' , '#335166' , 231    , 240   ]
let s:N3   = [ '#a6f655' , '#223644' , 155    , 237   ]
let g:airline#themes#Base2Tone_MeadowDark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#Base2Tone_MeadowDark#palette.normal_modified = {
      \ 'airline_c': [ '#fafbf9' , '#335166' , 231    , 240   , ''     ] ,
      \ }

let s:I1 = [ '#223644' , '#99eb47' , 237    , 154   ]
let s:I2 = [ '#fafbf9' , '#1b6498' , 231    , 24    ]
let s:I3 = [ '#a6f655' , '#223644' , 155    , 237   ]
let g:airline#themes#Base2Tone_MeadowDark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#Base2Tone_MeadowDark#palette.insert_modified = {
      \ 'airline_c': [ '#fafbf9' , '#335166' , 231    , 240   , ''     ] ,
      \ }
let g:airline#themes#Base2Tone_MeadowDark#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#4d8217' , s:I1[2] , 64    , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MeadowDark#palette.replace = copy(g:airline#themes#Base2Tone_MeadowDark#palette.insert)
let g:airline#themes#Base2Tone_MeadowDark#palette.replace.airline_a = [ s:I2[0]   , '#1b6498' , s:I2[2] , 24    , ''     ]
let g:airline#themes#Base2Tone_MeadowDark#palette.replace_modified = g:airline#themes#Base2Tone_MeadowDark#palette.insert_modified

let s:V1 = [ '#223644' , '#47adf5' , 237    , 75    ]
let s:V2 = [ '#fafbf9' , '#1b6498' , 231    , 24    ]
let s:V3 = [ '#fafbf9' , '#223644' , 231    , 237   ]
let g:airline#themes#Base2Tone_MeadowDark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#Base2Tone_MeadowDark#palette.visual_modified = {
      \ 'airline_c': [ '#fafbf9' , '#335166' , 231    , 240   , ''     ] ,
      \ }

let s:IA1 = [ '#335166' , '#223644' , 240    , 237   , '' ]
let s:IA2 = [ '#335166' , '#223644' , 240    , 237   , '' ]
let s:IA3 = [ '#335166' , '#223644' , 240    , 237   , '' ]
let g:airline#themes#Base2Tone_MeadowDark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#Base2Tone_MeadowDark#palette.inactive_modified = {
      \ 'airline_c': [ '#fafbf9' , '#335166' , 231    , 240   , ''     ] ,
      \ }

let g:airline#themes#Base2Tone_MeadowDark#palette.accents = {
      \ 'red': [ '#1b6498' , '' , 24    , ''  ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#Base2Tone_MeadowDark#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d1ecff' , '#1b6498' , 195    , 24    , ''     ],
      \ [ '#fafbf9' , '#2172ab' , 231    , 25    , ''     ],
      \ [ '#1b6498' , '#fafbf9' , 24     , 231   , 'bold' ])

