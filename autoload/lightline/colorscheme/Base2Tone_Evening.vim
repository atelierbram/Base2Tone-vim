" Filename: Base2Tone_Evening.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Evening.vim)
" Scheme: by Bram de Haan, adapted from DuoTone themes by Simurai (http://simurai.com/projects/2016/01/01/duotone-themes)
" License: MIT License

let s:cuicolors = {
      \ 'base03': [ '8', '236   ', 'DarkGray' ],
      \ 'base02': [ '0', '237   ', 'Black' ],
      \ 'base01': [ '10', '245   ', 'LightGreen' ],
      \ 'base00': [ '11', '246   ', 'LightYellow' ],
      \ 'base0':  [ '12', '248   ', 'LightBlue' ],
      \ 'base1':  [ '14', '250   ', 'LightCyan' ],
      \ 'base2': [ '7', '189   ', 'LightGray' ],
      \ 'base3': [ '15', '195   ', 'White' ],
      \ 'yellow': [ '3', '223   ', 'DarkYellow' ],
      \ 'orange': [ '9', '221   ', 'LightRed' ],
      \ 'red': [ '1', '62    ', 'DarkRed' ],
      \ 'magenta': [ '5', '141   ', 'DarkMagenta' ],
      \ 'violet': [ '13', '63    ', 'LightMagenta' ],
      \ 'blue': [ '4', '69    ', 'DarkBlue' ],
      \ 'cyan': [ '6', '178   ', 'DarkCyan' ],
      \ 'green': [ '2', '220   ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Evening uses to determine which set of colors
" to use.
let s:Base2Tone_Evening_termcolors = get(g:, 'Base2Tone_Evening_termcolors', 256)
if s:Base2Tone_Evening_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Evening_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#2a2734', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#363342', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#787391', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#8e8aa3', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#a4a1b5', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#bab8c7', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#d9d2fe', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#eeebff', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#ffcc99', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#ffb870', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#6a51e6', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#9a86fd', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#7a63ee', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#8a75f5', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#b37537', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#ffad5c', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Evening#palette = lightline#colorscheme#flatten(s:p)

