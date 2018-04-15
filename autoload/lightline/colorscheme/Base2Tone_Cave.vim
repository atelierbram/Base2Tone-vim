" Filename: Base2Tone_Cave.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Cave.vim)
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
      \ 'base2': [ '7', '218   ', 'LightGray' ],
      \ 'base3': [ '15', '231   ', 'White' ],
      \ 'yellow': [ '3', '222   ', 'DarkYellow' ],
      \ 'orange': [ '9', '179   ', 'LightRed' ],
      \ 'red': [ '1', '125   ', 'DarkRed' ],
      \ 'magenta': [ '5', '139   ', 'DarkMagenta' ],
      \ 'violet': [ '13', '95    ', 'LightMagenta' ],
      \ 'blue': [ '4', '95    ', 'DarkBlue' ],
      \ 'cyan': [ '6', '94    ', 'DarkCyan' ],
      \ 'green': [ '2', '178   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Cave uses to determine which set of colors
" to use.
let s:Base2Tone_Cave_termcolors = get(g:, 'Base2Tone_Cave_termcolors', 256)
if s:Base2Tone_Cave_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Cave_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#222021', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#2f2d2e', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#706b6d', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#8a8586', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#9f999b', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#b3adaf', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#f0a8c1', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#ffebf2', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#ffcc4d', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#ddaf3c', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#ad1f51', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#9c818b', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#875e6d', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#936c7a', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#996e00', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#cca133', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Cave#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#222021', 236   ]
let s:base02 = [ '#2f2d2e', 237   ]
let s:base01 = [ '#706b6d', 245   ]
let s:base00 = [ '#8a8586', 246   ]
let s:base0 = [ '#9f999b', 248   ]
let s:base1 = [ '#b3adaf', 250   ]
let s:base2 = [ '#f0a8c1', 218   ]
let s:base3 = [ '#ffebf2', 231   ]
let s:yellow = [ '#ffcc4d', 222   ]
let s:orange = [ '#ddaf3c', 179   ]
let s:red = [ '#ad1f51', 125   ]
let s:magenta = [ '#9c818b', 139   ]
let s:violet = [ '#875e6d', 95    ]
let s:blue = [ '#936c7a', 95    ]
let s:cyan = [ '#996e00', 94    ]
let s:green = [ '#cca133', 178   ]

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

let g:lightline#colorscheme#Base2Tone_Cave#palette = lightline#colorscheme#flatten(s:p)

