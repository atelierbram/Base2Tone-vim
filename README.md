# Base2Tone-vim

Base2Tone-vim – colorschemes for Vim – one of the syntax-highlighting applications containing the colorschemes of [Base2Tone](http://base2t.one) which were based on [Duotone Themes](http://simurai.com/projects/2016/01/01/duotone-themes/) by [Simurai](http://simurai.com/) for Atom.
> “DuoTone themes use only 2 hues (7 shades in total). It tones down less important parts (like punctuation and brackets) and highlights only the important ones. This leads to a more calm color scheme, but still lets you find the stuff you're looking for.”

**NOTE**: These color schemes are optimized and have been tested in the _GUI_ version of Vim, and will work in terminal versions as well. For terminals which don’t support truecolor the colors will now use converted colors which are as close as possible in the 8-bit 256 colorspace. It works  fine and looks good in Neovim, for the Gui colors for Neovim are now also specifically defined.
For Terminal Vim 8+ and/or Neovim, in your (sourced) `.vimrc` or default `.config/nvim/init.vim`, have something like this:

```bash
set termguicolors
 if has('nvim')
" https://github.com/neovim/neovim/wiki/FAQ
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
endif
```

For the most seamless experience: these same color schemes are also ported to [iTerm2](https://github.com/atelierbram/Base2Tone-iterm2) and [Hyper](https://github.com/atelierbram/Base2Tone-hyperterm).

***   ***   ***   ***   ***   ***   ***   ***   ***


All colorschemes will come in a separate dark and light version.

## Screenshot
![Base2Tone Evening Dark](http://base2t.one/assets/img/png/Base2Tone-Evening-dark-vim_940x640.png)
<br>Base2Tone_EveningDark

![Base2Tone Morning Light](http://base2t.one/assets/img/png/Base2Tone-Morning-light-vim_940x640.png)
<br>Base2Tone_MorningLight

**NOTE**: For javaScript users, with the plugin [Enhanced JavaScript Syntax for Vim](https://github.com/jelera/vim-javascript-syntax) the syntax-highlighting of these themes will look much better.

## Installation

### Option 1: Manual installation

1.  Move `Base2Tone-*.vim` to your `.vim/colors` directory. After downloading the
vim script or package:

```bash
$ cd Base2Tone-vim/colors
$ mv *.vim ~/.vim/colors/
```

### Option 2: for Vim 8+ installation in default pack/start folder of build-in package manager
```bash
$ cd ~/.vim/pack/bundle/start
$ git clone https://github.com/atelierbram/Base2Tone-vim.git
```

### Option 3: for Vim 8+ and Neovim installation with minpac _recommended_

1. Install [minpac plugin](https://github.com/k-takata/minpac)
2. in `.vimrc`:

```bash
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('atelierbram/Base2Tone-vim')
```

### Option 4: Pathogen installation
Clone [Base2Tone-vim](https://github.com/atelierbram/Base2Tone-vim) colorschemes, with plugin manager [Pathogen].

1.  Download and install Tim Pope's [Pathogen].

2.  Next, move or clone the `Base2Tone-vim` directory so that it is
a subdirectory of the `.vim/bundle` directory.

a. **Clone:**

```bash
$ cd ~/.vim/bundle
$ git clone https://github.com/atelierbram/Base2Tone-vim.git
```

b. **Move:**

In the parent working directory:

```bash
$ mv Base2Tone-vim ~/.vim/bundle/
```

### Modify .vimrc

After either Option 1 or Option 2 above, put the following two lines in your
`.vimrc`:

```vim
syntax enable
set background=dark
" Base2Tone Dark
colorscheme Base2Tone_EveningDark
" or any of the other schemes:
" colorscheme Base2Tone_MorningDark
" colorscheme Base2Tone_SeaDark
" colorscheme Base2Tone_SpaceDark
" colorscheme Base2Tone_EarthDark
" colorscheme Base2Tone_ForestDark
" colorscheme Base2Tone_DesertDark
" colorscheme Base2Tone_LakeDark
" colorscheme Base2Tone_MeadowDark
" colorscheme Base2Tone_DrawbridgeDark
" colorscheme Base2Tone_PoolDark
" colorscheme Base2Tone_HeathDark
" colorscheme Base2Tone_CaveDark

" Base2Tone Light
" set background=light
" colorscheme Base2Tone_EveningLight
" colorscheme Base2Tone_MorningLight
" colorscheme Base2Tone_SeaLight
" colorscheme Base2Tone_SpaceLight
" colorscheme Base2Tone_EarthLight
" colorscheme Base2Tone_ForestLight
" colorscheme Base2Tone_DesertLight
" colorscheme Base2Tone_LakeLight
" colorscheme Base2Tone_MeadowLight
" colorscheme Base2Tone_DrawbridgeLight
" colorscheme Base2Tone_PoolLight
" colorscheme Base2Tone_HeathLight
" colorscheme Base2Tone_CaveLight
```

### Optional [Airline](https://github.com/vim-airline/vim-airline) Support
These themes are tested in Gvim, but when using Vim within terminals which **do not** support truecolor, <del>it will fall back on the colors of the default [dark theme for vim-airline](https://github.com/vim-airline/vim-airline/blob/master/autoload/airline/themes/dark.vim)</del> it will now use converted colors which are as close as possible in the 8-bit 256 colorspace.

```vim
" Dark
let g:airline_theme='Base2Tone_EveningDark'
" or any of the other themes:
" let g:airline_theme='Base2Tone_MorningDark'
" let g:airline_theme='Base2Tone_SeaDark'
" let g:airline_theme='Base2Tone_SpaceDark'
" let g:airline_theme='Base2Tone_EarthDark'
" let g:airline_theme='Base2Tone_ForestDark'
" let g:airline_theme='Base2Tone_DesertDark'
" let g:airline_theme='Base2Tone_LakeDark'
" let g:airline_theme='Base2Tone_MeadowDark'
" let g:airline_theme='Base2Tone_DrawbridgeDark'
" let g:airline_theme='Base2Tone_PoolDark'
" let g:airline_theme='Base2Tone_HeathDark'
" let g:airline_theme='Base2Tone_CaveDark'
"
" Light
" let g:airline_theme='Base2Tone_EveningLight'
" let g:airline_theme='Base2Tone_MorningLight'
" let g:airline_theme='Base2Tone_SeaLight'
" let g:airline_theme='Base2Tone_SpaceLight'
" let g:airline_theme='Base2Tone_EarthLight'
" let g:airline_theme='Base2Tone_ForestLight'
" let g:airline_theme='Base2Tone_DesertLight'
" let g:airline_theme='Base2Tone_LakeLight'
" let g:airline_theme='Base2Tone_MeadowLight'
" let g:airline_theme='Base2Tone_DrawbridgeLight'
" let g:airline_theme='Base2Tone_PoolLight'
" let g:airline_theme='Base2Tone_HeathLight'
" let g:airline_theme='Base2Tone_CaveLight'
```

### Optional [Lightline](https://github.com/itchyny/lightline.vim) Support with Base2Tone
```vim
" lightline {{{
" -- INSERT -- is redundant because the mode information is displayed in the statusline:
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'Base2Tone_Pool',
      \ }
" or any of the other colorschemes
" template is smart and detects light or dark colorscheme being used
" }}}
```
 
### Optional (re)generate theme(s)
These themes are generated with [Base16 Builder](https://github.com/base16-builder/base16-builder) and can be adapted and regenerated with having that CLI installed.

```bash
$ npm install --global base16-builder
```

The file `io.sh` have to be made executable:

```bash
cd ~/.vim/bundle/Base2Tone-vim/
chmod +x io.sh
```

The templates `light.ejs` and `dark.ejs` can be found in `db/vim`.
After adapting the templates, or after making a colorscheme (`db/schemes`) one can just type `io.sh` from the commandline, within the parent working directory of Base2Tone-vim. The colorscheme-files will than be regenerated within the `colors`-folder, and the themes for Airline in the `autoload`-folder.

### Credits
Credits to [Simurai](http://simurai.com/), for these themes are based on [Duotone Themes](http://simurai.com/projects/2016/01/01/duotone-themes/) for Atom.
- [Chis Kempson](http://github.com/chriskempson) for creating [Base16 Builder](http://http://github.com/chriskempson/base16-builder)
- [Alois](https://github.com/aloisdg) and [Alex Booker](https://github.com/bookercodes) for rejuvenating the best colorscheme builder tool on the internet: [Base16 Builder](https://github.com/base16-builder/base16-builder)

### Resources
- [Orginal Colorscheme for Atom on simurai.com](http://simurai.com/projects/2016/01/01/duotone-themes/)
- [Orginal Colorscheme for Atom on Github](https://github.com/simurai/duotone-dark-syntax/blob/master/styles/colors.less)
- [Creating Colorschemes for Vim on vimcasts.org](http://vimcasts.org/episodes/creating-colorschemes-for-vim/)
- [Meet minpac](http://vimcasts.org/episodes/minpac/)
- [vim plugin to trace syntax highlight](https://github.com/gerw/vim-HiLinkTrace)

### License
Released under [MIT Licence](http://atelierbram.mit-license.org)

[Pathogen]: https://github.com/tpope/vim-pathogen
