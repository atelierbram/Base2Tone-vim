" Filename: Base2Tone_Desert.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Desert.vim)
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
      \ 'base2': [ '7', '188   ', 'LightGray' ],
      \ 'base3': [ '15', '224   ', 'White' ],
      \ 'yellow': [ '3', '216   ', 'DarkYellow' ],
      \ 'orange': [ '9', '209   ', 'LightRed' ],
      \ 'red': [ '1', '59    ', 'DarkRed' ],
      \ 'magenta': [ '5', '138   ', 'DarkMagenta' ],
      \ 'violet': [ '13', '95    ', 'LightMagenta' ],
      \ 'blue': [ '4', '94    ', 'DarkBlue' ],
      \ 'cyan': [ '6', '130   ', 'DarkCyan' ],
      \ 'green': [ '2', '208   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Desert uses to determine which set of colors
" to use.
let s:Base2Tone_Desert_termcolors = get(g:, 'Base2Tone_Desert_termcolors', 256)
if s:Base2Tone_Desert_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Desert_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#292724', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#3d3a34', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#908774', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#9f9684', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#ada594', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#bbb4a5', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#ddcba6', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#f2ead9', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#ffb380', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#f29d63', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#5c523d', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#957e50', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#6e6045', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#816f4b', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#bc672f', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#ec9255', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Desert#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#292724', 236   ]
let s:base02 = [ '#3d3a34', 237   ]
let s:base01 = [ '#908774', 245   ]
let s:base00 = [ '#9f9684', 246   ]
let s:base0 = [ '#ada594', 248   ]
let s:base1 = [ '#bbb4a5', 250   ]
let s:base2 = [ '#ddcba6', 188   ]
let s:base3 = [ '#f2ead9', 224   ]
let s:yellow = [ '#ffb380', 216   ]
let s:orange = [ '#f29d63', 209   ]
let s:red = [ '#5c523d', 59    ]
let s:magenta = [ '#957e50', 138   ]
let s:violet = [ '#6e6045', 95    ]
let s:blue = [ '#816f4b', 94    ]
let s:cyan = [ '#bc672f', 130   ]
let s:green = [ '#ec9255', 208   ]

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

let g:lightline#colorscheme#Base2Tone_Desert#palette = lightline#colorscheme#flatten(s:p)

