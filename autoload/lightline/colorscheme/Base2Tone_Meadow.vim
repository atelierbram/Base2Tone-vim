" Filename: Base2Tone_Meadow.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Meadow.vim)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)
" Info: http://base2t.one/
" License: MIT License

let s:cuicolors = {
      \ 'base03': [ '8', '236   ', 'DarkGray' ],
      \ 'base02': [ '0', '237   ', 'Black' ],
      \ 'base01': [ '10', '245   ', 'LightGreen' ],
      \ 'base00': [ '11', '246   ', 'LightYellow' ],
      \ 'base0':  [ '12', '248   ', 'LightBlue' ],
      \ 'base1':  [ '14', '250   ', 'LightCyan' ],
      \ 'base2': [ '7', '252   ', 'LightGray' ],
      \ 'base3': [ '15', '195   ', 'White' ],
      \ 'yellow': [ '3', '155   ', 'DarkYellow' ],
      \ 'orange': [ '9', '148   ', 'LightRed' ],
      \ 'red': [ '1', '24    ', 'DarkRed' ],
      \ 'magenta': [ '5', '39    ', 'DarkMagenta' ],
      \ 'violet': [ '13', '25    ', 'LightMagenta' ],
      \ 'blue': [ '4', '32    ', 'DarkBlue' ],
      \ 'cyan': [ '6', '64    ', 'DarkCyan' ],
      \ 'green': [ '2', '142   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Meadow uses to determine which set of colors
" to use.
let s:Base2Tone_Meadow_termcolors = get(g:, 'Base2Tone_Meadow_termcolors', 256)
if s:Base2Tone_Meadow_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Meadow_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#192834', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#223644', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#466b86', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#507895', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#7b9eb7', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#7b9eb7', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#afddfe', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#d1ecff', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#a6f655', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#8cdd3c', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#1b6498', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#4299d7', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#2172ab', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#277fbe', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#4d8217', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#80bf40', s:cuicolors.green[s:cuiindex] ]

if lightline#colorscheme#background() ==# 'light'
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ]
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ]
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ]
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ]
  let [ s:blue, s:green ] = [ s:green, s:blue ]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base03, s:base00 ] ]
let s:p.normal.right = [ [ s:base03, s:base1 ], [ s:base03, s:base00 ] ]
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base0, s:base02 ] ]
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base03, s:base00 ] ]
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base03, s:base00 ] ]
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base03, s:base00 ] ]
let s:p.normal.middle = [ [ s:base1, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base01, s:base02 ] ]
let s:p.tabline.left = [ [ s:base03, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base03, s:base1 ] ]
let s:p.tabline.middle = [ [ s:base0, s:base02 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base03, s:yellow ] ]

let g:lightline#colorscheme#Base2Tone_Meadow#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#192834', 236   ]
let s:base02 = [ '#223644', 237   ]
let s:base01 = [ '#466b86', 245   ]
let s:base00 = [ '#507895', 246   ]
let s:base0 = [ '#7b9eb7', 248   ]
let s:base1 = [ '#7b9eb7', 250   ]
let s:base2 = [ '#afddfe', 252   ]
let s:base3 = [ '#d1ecff', 195   ]
let s:yellow = [ '#a6f655', 155   ]
let s:orange = [ '#8cdd3c', 148   ]
let s:red = [ '#1b6498', 24    ]
let s:magenta = [ '#4299d7', 39    ]
let s:violet = [ '#2172ab', 25    ]
let s:blue = [ '#277fbe', 32    ]
let s:cyan = [ '#4d8217', 64    ]
let s:green = [ '#80bf40', 142   ]

if lightline#colorscheme#background() ==# 'light'
  let [ s:base03, s:base3 ] = [ s:base3, s:base03 ]
  let [ s:base02, s:base2 ] = [ s:base2, s:base02 ]
  let [ s:base01, s:base1 ] = [ s:base1, s:base01 ]
  let [ s:base00, s:base0 ] = [ s:base0, s:base00 ]
  let [ s:blue, s:green ] = [ s:green, s:blue ]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base03, s:blue ], [ s:base03, s:base00 ] ]
let s:p.normal.right = [ [ s:base03, s:base1 ], [ s:base03, s:base00 ] ]
let s:p.inactive.right = [ [ s:base03, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base0, s:base02 ] ]
let s:p.insert.left = [ [ s:base03, s:green ], [ s:base03, s:base00 ] ]
let s:p.replace.left = [ [ s:base03, s:red ], [ s:base03, s:base00 ] ]
let s:p.visual.left = [ [ s:base03, s:magenta ], [ s:base03, s:base00 ] ]
let s:p.normal.middle = [ [ s:base1, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base01, s:base02 ] ]
let s:p.tabline.left = [ [ s:base03, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base03, s:base1 ] ]
let s:p.tabline.middle = [ [ s:base0, s:base02 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base03, s:yellow ] ]

let g:lightline#colorscheme#Base2Tone_Meadow#palette = lightline#colorscheme#flatten(s:p)

