" Filename: Base2Tone_Lavender.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Lavender.vim)
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
      \ 'base2': [ '7', '225   ', 'LightGray' ],
      \ 'base3': [ '15', '231   ', 'White' ],
      \ 'yellow': [ '3', '217   ', 'DarkYellow' ],
      \ 'orange': [ '9', '210   ', 'LightRed' ],
      \ 'red': [ '1', '98    ', 'DarkRed' ],
      \ 'magenta': [ '5', '141   ', 'DarkMagenta' ],
      \ 'violet': [ '13', '135   ', 'LightMagenta' ],
      \ 'blue': [ '4', '141   ', 'DarkBlue' ],
      \ 'cyan': [ '6', '167   ', 'DarkCyan' ],
      \ 'green': [ '2', '210   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Lavender uses to determine which set of colors
" to use.
let s:Base2Tone_Lavender_termcolors = get(g:, 'Base2Tone_Lavender_termcolors', 256)
if s:Base2Tone_Lavender_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Lavender_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#201d2a', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#2c2839', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#6e658b', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#827a9f', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#9992b0', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#afa9c1', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#dcd2fe', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#efebff', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#ecd1ff', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#dba8ff', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#7451e6', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#a286fd', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#8363ee', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#9375f5', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#b042ff', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#d294ff', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Lavender#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#201d2a', 236   ]
let s:base02 = [ '#2c2839', 237   ]
let s:base01 = [ '#6e658b', 245   ]
let s:base00 = [ '#827a9f', 246   ]
let s:base0 = [ '#9992b0', 248   ]
let s:base1 = [ '#afa9c1', 250   ]
let s:base2 = [ '#dcd2fe', 225   ]
let s:base3 = [ '#efebff', 231   ]
let s:yellow = [ '#ecd1ff', 217   ]
let s:orange = [ '#dba8ff', 210   ]
let s:red = [ '#7451e6', 98    ]
let s:magenta = [ '#a286fd', 141   ]
let s:violet = [ '#8363ee', 135   ]
let s:blue = [ '#9375f5', 141   ]
let s:cyan = [ '#b042ff', 167   ]
let s:green = [ '#d294ff', 210   ]

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

let g:lightline#colorscheme#Base2Tone_Lavender#palette = lightline#colorscheme#flatten(s:p)

