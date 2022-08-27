#!/bin/bash
targetDir="$HOME/$1"
mkdir $targetDir &> /dev/null
mkdir $targetDir/$3 &> /dev/null
#echo "stow --dir=/home/karsten/dotfiles/ --target=$targetDir/$3 $2 $3"
stow --dir=/home/karsten/dotfiles/ --target=$targetDir/$3 $2 $3
