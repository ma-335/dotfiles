#!/bin/sh

dir=`pwd`

for x in .tmux.conf .emacs.d .zsh .zshrc .zprofile .zlogin .gitconfig .gitignore
do
  if [ -e "$HOME/$x" ]; then
      echo "$HOME/$x: File exists"
  else
      cmd="ln -s $dir/$x $HOME"
      echo $cmd
      $cmd
  fi
done
