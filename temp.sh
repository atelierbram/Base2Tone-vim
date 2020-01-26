#!/bin/bash -x

# write to file
overwrite_to_file()
{
  base16-builder --scheme "db/schemes/base2tone-evening.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone_EveningDark.vim"
  base16-builder --scheme "db/schemes/base2tone-morning.yml" --template "db/templates/vim/light.ejs" > "colors/Base2Tone_MorningLight.vim"
  base16-builder --scheme "db/schemes/base2tone-space.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone_SpaceDark.vim"
  base16-builder --scheme "db/schemes/base2tone-space.yml" --template "db/templates/vim/light-alt.ejs" > "colors/Base2Tone_SpaceLight.vim"
  # base16-builder --scheme "db/schemes/base2tone-mall.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone_MallDark.vim"
  # base16-builder --scheme "db/schemes/base2tone-mall.yml" --template "db/templates/vim/light-alt.ejs" > "colors/Base2Tone_MallLight.vim"
  # base16-builder --scheme "db/schemes/base2tone-porch.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone_PorchDark.vim"
  # base16-builder --scheme "db/schemes/base2tone-porch.yml" --template "db/templates/vim/light-alt.ejs" > "colors/Base2Tone_PorchLight.vim"
  # base16-builder --scheme "db/schemes/base2tone-field.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone_FieldDark.vim"
  # base16-builder --scheme "db/schemes/base2tone-field.yml" --template "db/templates/vim/light-alt.ejs" > "colors/Base2Tone_FieldLight.vim"
  # base16-builder --scheme "db/schemes/base2tone-motel.yml" --template "db/templates/vim/dark.ejs" > "colors/Base2Tone_MotelDark.vim"
  # base16-builder --scheme "db/schemes/base2tone-motel.yml" --template "db/templates/vim/light-alt.ejs" > "colors/Base2Tone_MotelLight.vim"

  # base16-builder --scheme "db/schemes/base2tone-mall.yml" --template "db/templates/vim-airline/dark.ejs" > "autoload/airline/themes/Base2Tone_MallDark.vim"
  # base16-builder --scheme "db/schemes/base2tone-mall.yml" --template "db/templates/vim-airline/light.ejs" > "autoload/airline/themes/Base2Tone_MallLight.vim"
  # base16-builder --scheme "db/schemes/base2tone-porch.yml" --template "db/templates/vim-airline/dark.ejs" > "autoload/airline/themes/Base2Tone_PorchDark.vim"
  # base16-builder --scheme "db/schemes/base2tone-porch.yml" --template "db/templates/vim-airline/light.ejs" > "autoload/airline/themes/Base2Tone_PorchLight.vim"
  # base16-builder --scheme "db/schemes/base2tone-field.yml" --template "db/templates/vim-airline/dark.ejs" > "autoload/airline/themes/Base2Tone_FieldDark.vim"
  # base16-builder --scheme "db/schemes/base2tone-field.yml" --template "db/templates/vim-airline/light.ejs" > "autoload/airline/themes/Base2Tone_FieldLight.vim"
  # base16-builder --scheme "db/schemes/base2tone-motel.yml" --template "db/templates/vim-airline/dark.ejs" > "autoload/airline/themes/Base2Tone_MotelDark.vim"
  # base16-builder --scheme "db/schemes/base2tone-motel.yml" --template "db/templates/vim-airline/light.ejs" > "autoload/airline/themes/Base2Tone_MotelLight.vim"
  #
  # base16-builder --scheme "db/schemes/base2tone-mall.yml" --template "db/templates/lightline/template.ejs" > "autoload/lightline/colorscheme/Base2Tone_Mall.vim"
  # base16-builder --scheme "db/schemes/base2tone-porch.yml" --template "db/templates/lightline/template.ejs" > "autoload/lightline/colorscheme/Base2Tone_Porch.vim"
  # base16-builder --scheme "db/schemes/base2tone-field.yml" --template "db/templates/lightline/template.ejs" > "autoload/lightline/colorscheme/Base2Tone_Field.vim"
  # base16-builder --scheme "db/schemes/base2tone-motel.yml" --template "db/templates/lightline/template.ejs" > "autoload/lightline/colorscheme/Base2Tone_Motel.vim"

}

# execute it
overwrite_to_file
