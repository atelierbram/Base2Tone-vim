" Filename: Base2Tone_Heath.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Heath.vim)
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
      \ 'base2': [ '7', '219   ', 'LightGray' ],
      \ 'base3': [ '15', '231   ', 'White' ],
      \ 'yellow': [ '3', '223   ', 'DarkYellow' ],
      \ 'orange': [ '9', '180   ', 'LightRed' ],
      \ 'red': [ '1', '127   ', 'DarkRed' ],
      \ 'magenta': [ '5', '139   ', 'DarkMagenta' ],
      \ 'violet': [ '13', '96    ', 'LightMagenta' ],
      \ 'blue': [ '4', '134   ', 'DarkBlue' ],
      \ 'cyan': [ '6', '130   ', 'DarkCyan' ],
      \ 'green': [ '2', '172   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Heath uses to determine which set of colors
" to use.
let s:Base2Tone_Heath_termcolors = get(g:, 'Base2Tone_Heath_termcolors', 256)
if s:Base2Tone_Heath_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Heath_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#222022', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#2f2d2f', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#6f6b70', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#89858a', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#9e999f', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#b3adb3', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#eaa8f0', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#fdebff', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#ffd599', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#d9b98c', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#a21fad', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#9a819c', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#845e87', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#8f6c93', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#995900', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#cc8c33', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Heath#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#222022', 236   ]
let s:base02 = [ '#2f2d2f', 237   ]
let s:base01 = [ '#6f6b70', 245   ]
let s:base00 = [ '#89858a', 246   ]
let s:base0 = [ '#9e999f', 248   ]
let s:base1 = [ '#b3adb3', 250   ]
let s:base2 = [ '#eaa8f0', 219   ]
let s:base3 = [ '#fdebff', 231   ]
let s:yellow = [ '#ffd599', 223   ]
let s:orange = [ '#d9b98c', 180   ]
let s:red = [ '#a21fad', 127   ]
let s:magenta = [ '#9a819c', 139   ]
let s:violet = [ '#845e87', 96    ]
let s:blue = [ '#8f6c93', 134   ]
let s:cyan = [ '#995900', 130   ]
let s:green = [ '#cc8c33', 172   ]

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

let g:lightline#colorscheme#Base2Tone_Heath#palette = lightline#colorscheme#flatten(s:p)

