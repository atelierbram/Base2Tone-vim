" Filename: Base2Tone_Earth.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Earth.vim)
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
      \ 'base2': [ '7', '180   ', 'LightGray' ],
      \ 'base3': [ '15', '231   ', 'White' ],
      \ 'yellow': [ '3', '214   ', 'DarkYellow' ],
      \ 'orange': [ '9', '178   ', 'LightRed' ],
      \ 'red': [ '1', '59    ', 'DarkRed' ],
      \ 'magenta': [ '5', '244   ', 'DarkMagenta' ],
      \ 'violet': [ '13', '95    ', 'LightMagenta' ],
      \ 'blue': [ '4', '243   ', 'DarkBlue' ],
      \ 'cyan': [ '6', '137   ', 'DarkCyan' ],
      \ 'green': [ '2', '178   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Earth uses to determine which set of colors
" to use.
let s:Base2Tone_Earth_termcolors = get(g:, 'Base2Tone_Earth_termcolors', 256)
if s:Base2Tone_Earth_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Earth_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#322d29', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#3f3a37', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#796b63', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#a3948a', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#b5a9a1', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#c7beb8', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#dfb99f', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#fff3eb', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#fcc440', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#e6b84d', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#6f5849', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#88786d', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#786254', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#816d5f', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#9c8349', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#d9b154', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Earth#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#322d29', 236   ]
let s:base02 = [ '#3f3a37', 237   ]
let s:base01 = [ '#796b63', 245   ]
let s:base00 = [ '#a3948a', 246   ]
let s:base0 = [ '#b5a9a1', 248   ]
let s:base1 = [ '#c7beb8', 250   ]
let s:base2 = [ '#dfb99f', 180   ]
let s:base3 = [ '#fff3eb', 231   ]
let s:yellow = [ '#fcc440', 214   ]
let s:orange = [ '#e6b84d', 178   ]
let s:red = [ '#6f5849', 59    ]
let s:magenta = [ '#88786d', 244   ]
let s:violet = [ '#786254', 95    ]
let s:blue = [ '#816d5f', 243   ]
let s:cyan = [ '#9c8349', 137   ]
let s:green = [ '#d9b154', 178   ]

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

let g:lightline#colorscheme#Base2Tone_Earth#palette = lightline#colorscheme#flatten(s:p)

