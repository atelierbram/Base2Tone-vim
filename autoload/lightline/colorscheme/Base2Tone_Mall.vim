" Filename: Base2Tone_Mall.vim (https://github.com/atelierbram/Base2Tone-vim/blob/master/autoload/lightline/colorscheme/Base2Tone_Mall.vim)
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
      \ 'base3': [ '15', '189   ', 'White' ],
      \ 'yellow': [ '3', '123   ', 'DarkYellow' ],
      \ 'orange': [ '9', '51    ', 'LightRed' ],
      \ 'red': [ '1', '62    ', 'DarkRed' ],
      \ 'magenta': [ '5', '69    ', 'DarkMagenta' ],
      \ 'violet': [ '13', '62    ', 'LightMagenta' ],
      \ 'blue': [ '4', '69    ', 'DarkBlue' ],
      \ 'cyan': [ '6', '31    ', 'DarkCyan' ],
      \ 'green': [ '2', '45    ', 'DarkGreen' ],
      \ }

" The following condition only applies for the console and is the same
" condition vim-colors-Base2Tone_Mall uses to determine which set of colors
" to use.
let s:Base2Tone_Mall_termcolors = get(g:, 'Base2Tone_Mall_termcolors', 256)
if s:Base2Tone_Mall_termcolors != 256 && &t_Co >= 16
  let s:cuiindex = 0
elseif s:Base2Tone_Mall_termcolors == 256
  let s:cuiindex = 1
else
  let s:cuiindex = 2
endif

let s:base03 = [ '#1e1e1f', s:cuicolors.base03[s:cuiindex] ]
let s:base02 = [ '#2b2b2c', s:cuicolors.base02[s:cuiindex] ]
let s:base01 = [ '#6a686e', s:cuicolors.base01[s:cuiindex] ]
let s:base00 = [ '#838188', s:cuicolors.base00[s:cuiindex] ]
let s:base0 = [ '#97959d', s:cuicolors.base0[s:cuiindex] ]
let s:base1 = [ '#acaab1', s:cuicolors.base1[s:cuiindex] ]
let s:base2 = [ '#e5dbff', s:cuicolors.base2[s:cuiindex] ]
let s:base3 = [ '#f4f0ff', s:cuicolors.base3[s:cuiindex] ]
let s:yellow = [ '#b3dbff', s:cuicolors.yellow[s:cuiindex] ]
let s:orange = [ '#8ac8ff', s:cuicolors.orange[s:cuiindex] ]
let s:red = [ '#855ee8', s:cuicolors.red[s:cuiindex] ]
let s:magenta = [ '#b294ff', s:cuicolors.magenta[s:cuiindex] ]
let s:violet = [ '#936df3', s:cuicolors.violet[s:cuiindex] ]
let s:blue = [ '#a17efc', s:cuicolors.blue[s:cuiindex] ]
let s:cyan = [ '#3692e2', s:cuicolors.cyan[s:cuiindex] ]
let s:green = [ '#75bfff', s:cuicolors.green[s:cuiindex] ]

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

let g:lightline#colorscheme#Base2Tone_Mall#palette = lightline#colorscheme#flatten(s:p)
let s:base03 = [ '#1e1e1f', 236   ]
let s:base02 = [ '#2b2b2c', 237   ]
let s:base01 = [ '#6a686e', 245   ]
let s:base00 = [ '#838188', 246   ]
let s:base0 = [ '#97959d', 248   ]
let s:base1 = [ '#acaab1', 250   ]
let s:base2 = [ '#e5dbff', 153   ]
let s:base3 = [ '#f4f0ff', 189   ]
let s:yellow = [ '#b3dbff', 123   ]
let s:orange = [ '#8ac8ff', 51    ]
let s:red = [ '#855ee8', 62    ]
let s:magenta = [ '#b294ff', 69    ]
let s:violet = [ '#936df3', 62    ]
let s:blue = [ '#a17efc', 69    ]
let s:cyan = [ '#3692e2', 31    ]
let s:green = [ '#75bfff', 45    ]

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

let g:lightline#colorscheme#Base2Tone_Mall#palette = lightline#colorscheme#flatten(s:p)

