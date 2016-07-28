#!/bin/bash -x

# write to file
overwrite_to_file()
{
  base16-builder --scheme "db/schemes/base2tone-evening.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Evening-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-evening.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Evening-light.vim"
  base16-builder --scheme "db/schemes/base2tone-morning.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Morning-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-morning.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Morning-light.vim"
  base16-builder --scheme "db/schemes/base2tone-space.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Space-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-space.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Space-light.vim"
  base16-builder --scheme "db/schemes/base2tone-sea.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Sea-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-sea.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Sea-light.vim"
  base16-builder --scheme "db/schemes/base2tone-forest.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Forest-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-forest.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Forest-light.vim"
  base16-builder --scheme "db/schemes/base2tone-earth.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Earth-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-earth.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Earth-light.vim"
  base16-builder --scheme "db/schemes/base2tone-desert.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Desert-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-desert.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Desert-light.vim"
  base16-builder --scheme "db/schemes/base2tone-pool.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Pool-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-pool.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Pool-light.vim"
  base16-builder --scheme "db/schemes/base2tone-lake.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Lake-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-lake.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Lake-light.vim"
  base16-builder --scheme "db/schemes/base2tone-cave.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Cave-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-cave.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Cave-light.vim"
  base16-builder --scheme "db/schemes/base2tone-heath.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone-Heath-dark.vim"
  base16-builder --scheme "db/schemes/base2tone-heath.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone-Heath-light.vim"
 }

# execute it
overwrite_to_file
