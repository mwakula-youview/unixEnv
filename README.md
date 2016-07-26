#!/bin/bash

# unix environment related scripts by me

cfg=~/.myCfg
mkdir "$cfg"
cd "$cfg"
git clone git@github.com:mwakula-youview/unixEnv.git .
rm -f ~/.bashrc ~/.vimrc
ln -s "${cfg}/bashrc" ~/.bashrc
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/autoload

ln -s "${cfg}/solarized.vim" ~/.vim/colors/solarized.vim
ln -s "${cfg}/foldText.vim" ~/.vim/autoload/foldText.vim
ln -s "${cfg}/vimrc" ~/.vimrc

