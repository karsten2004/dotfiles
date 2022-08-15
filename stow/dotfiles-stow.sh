#!/bin/bash
targetDir="$HOME/$1"
mkdir $targetDir
echo "stow --dir=/home/karsten/dotfiles/ --target=$targetDir/$3 $2 $3"
stow --dir=/home/karsten/dotfiles/ --target=$targetDir/$3 $2 $3


