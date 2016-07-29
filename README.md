# Base2Tone-vim

Base2Tone-vim – colorschemes for Vim – one of the syntax-highlighting applications containing the colorschemes of [Base2Tone](http://base2t.one) which were based on [Duotone Themes](http://simurai.com/projects/2016/01/01/duotone-themes/) by [Simurai](http://simurai.com/) for Atom.
> “DuoTone themes use only 2 hues (7 shades in total). It tones down less important parts (like punctuation and brackets) and highlights only the important ones. This leads to a more calm color scheme, but still lets you find the stuff you're looking for.”


**NOTE**: These color schemes are optimized and have been tested in the _GUI_ version of Vim, and _not_ the terminal version. For a more seamless experience: these same color schemes are also ported to iTerm2, see: <https://github.com/atelierbram/Base2Tone-iterm2>.

All colorschemes will come in a separate dark and light version.

## Screenshot
![Base2Tone Evening Dark](http://base2t.one/assets/img/png/Base2Tone-Evening-dark-vim_940x640.png) 
Base2Tone-Evening-dark

![Base2Tone Morning Light](http://base2t.one/assets/img/png/Base2Tone-Morning-light-vim_940x640.png) 
Base2Tone-Morning-light

**NOTE**: For javaScript users, with the plugin [Enhanced JavaScript Syntax for Vim](https://github.com/jelera/vim-javascript-syntax) the syntax-highlighting of these themes will look much better.

## Installation

### Option 1: Manual installation

1.  Move `Base2Tone-*.vim` to your `.vim/colors` directory. After downloading the
vim script or package:

```bash
$ cd Base2Tone-vim/colors
$ mv *.vim ~/.vim/colors/
```

### Option 2: Pathogen installation ***(recommended)***
Easy clone [Base2Tone-vim](https://github.com/atelierbram/Base2Tone-vim) colorschemes, with plugin manager [Pathogen].

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
colorscheme Base2Tone-Evening-dark
" or any of the other schemes:
" colorscheme Base2Tone-Morning-dark
" colorscheme Base2Tone-Sea-dark
" colorscheme Base2Tone-Space-dark
" colorscheme Base2Tone-Earth-dark
" colorscheme Base2Tone-Forest-dark
" colorscheme Base2Tone-Desert-dark
" colorscheme Base2Tone-Lake-dark
" colorscheme Base2Tone-Pool-dark
" colorscheme Base2Tone-Heath-dark
" colorscheme Base2Tone-Cave-dark

" Base2Tone Light
" set background=light
" colorscheme Base2Tone-Evening-light
" colorscheme Base2Tone-Morning-light
" colorscheme Base2Tone-Sea-light
" colorscheme Base2Tone-Space-light
" colorscheme Base2Tone-Earth-light
" colorscheme Base2Tone-Forest-light
" colorscheme Base2Tone-Desert-light
" colorscheme Base2Tone-Lake-light
" colorscheme Base2Tone-Pool-light
" colorscheme Base2Tone-Heath-light
" colorscheme Base2Tone-Cave-light
```


### Optional

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
After adapting the templates, or after making a colorscheme (`db/schemes`) one can just type `io.sh` from the commandline, within the parent working directory of Base2Tone-vim. The colorscheme-files will than be regenerated within in the `colors` folder.

### Credits
Credits to [Simurai](http://simurai.com/), for these themes are based on [Duotone Themes](http://simurai.com/projects/2016/01/01/duotone-themes/) for Atom.

### Resources
- [Orginal Colorscheme for Atom on simurai.com](http://simurai.com/projects/2016/01/01/duotone-themes/)
- [Orginal Colorscheme for Atom on Github](https://github.com/simurai/duotone-dark-syntax/blob/master/styles/colors.less)
- [Creating Colorschemes for Vim on vimcasts.org](http://vimcasts.org/episodes/creating-colorschemes-for-vim/)
- [vim plugin to trace syntax highlight](https://github.com/gerw/vim-HiLinkTrace)

### License
Released under [MIT Licence](http://atelierbram.mit-license.org)

[Pathogen]: https://github.com/tpope/vim-pathogen
