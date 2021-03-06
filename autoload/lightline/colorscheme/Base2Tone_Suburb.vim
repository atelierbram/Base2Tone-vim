" Filename: Base2Tone_Suburb.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Suburb.vim)
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
" condition vim-colors-Base2Tone_Suburb uses to determine which set of colors
" to use.
let s:Base2Tone_Suburb_termcolors = get(g:, 'Base2Tone_Suburb_termcolors', 256)
if s:Base2Tone_Suburb_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Suburb_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#1e202f', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#292c3d', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#5b6080', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#6e7396', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#878ba6', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#9fa2b7', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#d2d8fe', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#ebedff', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#ffb3d2', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#fe81b5', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#5165e6', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#8696fd', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#6375ee', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#7586f5', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#d14781', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#fb6fa9', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Suburb#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#1e202f', 236   ]
let s:base02 = [ '#292c3d', 237   ]
let s:base01 = [ '#5b6080', 245   ]
let s:base00 = [ '#6e7396', 246   ]
let s:base0 = [ '#878ba6', 248   ]
let s:base1 = [ '#9fa2b7', 250   ]
let s:base2 = [ '#d2d8fe', 225   ]
let s:base3 = [ '#ebedff', 231   ]
let s:yellow = [ '#ffb3d2', 217   ]
let s:orange = [ '#fe81b5', 210   ]
let s:red = [ '#5165e6', 98    ]
let s:magenta = [ '#8696fd', 141   ]
let s:violet = [ '#6375ee', 135   ]
let s:blue = [ '#7586f5', 141   ]
let s:cyan = [ '#d14781', 167   ]
let s:green = [ '#fb6fa9', 210   ]

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

let g:lightline#colorscheme#Base2Tone_Suburb#palette = lightline#colorscheme#flatten(s:p)

