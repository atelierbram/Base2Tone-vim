" Filename: Base2Tone_Field.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Field.vim)
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
      \ 'base2': [ '7', '253   ', 'LightGray' ],
      \ 'base3': [ '15', '194  ', 'White' ],
      \ 'yellow': [ '3', '192   ', 'DarkYellow' ],
      \ 'orange': [ '9', '155   ', 'LightRed' ],
      \ 'red': [ '1', '239   ', 'DarkRed' ],
      \ 'magenta': [ '5', '243   ', 'DarkMagenta' ],
      \ 'violet': [ '13', '241   ', 'LightMagenta' ],
      \ 'blue': [ '4', '242   ', 'DarkBlue' ],
      \ 'cyan': [ '6', '58    ', 'DarkCyan' ],
      \ 'green': [ '2', '150   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Field uses to determine which set of colors
" to use.
let s:Base2Tone_Field_termcolors = get(g:, 'Base2Tone_Field_termcolors', 256)
if s:Base2Tone_Field_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Field_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#18201e', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#242e2c', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#667a77', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#78918d', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#8ea4a0', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#a4b7b4', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#88f2e0', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#a8fff1', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#85ffb8', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#55ec94', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#037764', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#25d0b4', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#089b83', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#0fbda0', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#00943e', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#3be381', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Field#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#18201e', 236   ]
let s:base02 = [ '#242e2c', 237   ]
let s:base01 = [ '#667a77', 245   ]
let s:base00 = [ '#78918d', 246   ]
let s:base0 = [ '#8ea4a0', 248   ]
let s:base1 = [ '#a4b7b4', 250   ]
let s:base2 = [ '#88f2e0', 253   ]
let s:base3 = [ '#a8fff1', 194  ]
let s:yellow = [ '#85ffb8', 192   ]
let s:orange = [ '#55ec94', 155   ]
let s:red = [ '#037764', 239   ]
let s:magenta = [ '#25d0b4', 243   ]
let s:violet = [ '#089b83', 241   ]
let s:blue = [ '#0fbda0', 242   ]
let s:cyan = [ '#00943e', 58    ]
let s:green = [ '#3be381', 150   ]

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

let g:lightline#colorscheme#Base2Tone_Field#palette = lightline#colorscheme#flatten(s:p)

