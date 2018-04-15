" Filename: Base2Tone_Lake.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Lake.vim)
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
      \ 'base2': [ '7', '153   ', 'LightGray' ],
      \ 'base3': [ '15', '15    ', 'White' ],
      \ 'yellow': [ '3', '221   ', 'DarkYellow' ],
      \ 'orange': [ '9', '144   ', 'LightRed' ],
      \ 'red': [ '1', '24    ', 'DarkRed' ],
      \ 'magenta': [ '5', '38    ', 'DarkMagenta' ],
      \ 'violet': [ '13', '31    ', 'LightMagenta' ],
      \ 'blue': [ '4', '32    ', 'DarkBlue' ],
      \ 'cyan': [ '6', '94    ', 'DarkCyan' ],
      \ 'green': [ '2', '144   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Lake uses to determine which set of colors
" to use.
let s:Base2Tone_Lake_termcolors = get(g:, 'Base2Tone_Lake_termcolors', 256)
if s:Base2Tone_Lake_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Lake_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#192d34', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#223c44', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#467686', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#508495', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#7ba8b7', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#adc8d1', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#a5d8e9', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#e1f7ff', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#ffeb66', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#d6c65c', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#2f7289', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#499fbc', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#36829b', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#3e91ac', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#84740b', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#cbbb4d', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Lake#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#192d34', 236   ]
let s:base02 = [ '#223c44', 237   ]
let s:base01 = [ '#467686', 245   ]
let s:base00 = [ '#508495', 246   ]
let s:base0 = [ '#7ba8b7', 248   ]
let s:base1 = [ '#adc8d1', 250   ]
let s:base2 = [ '#a5d8e9', 153   ]
let s:base3 = [ '#e1f7ff', 15    ]
let s:yellow = [ '#ffeb66', 221   ]
let s:orange = [ '#d6c65c', 144   ]
let s:red = [ '#2f7289', 24    ]
let s:magenta = [ '#499fbc', 38    ]
let s:violet = [ '#36829b', 31    ]
let s:blue = [ '#3e91ac', 32    ]
let s:cyan = [ '#84740b', 94    ]
let s:green = [ '#cbbb4d', 144   ]

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

let g:lightline#colorscheme#Base2Tone_Lake#palette = lightline#colorscheme#flatten(s:p)

