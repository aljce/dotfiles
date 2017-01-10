#!/usr/bin/env bash
set -e

while true; do
  read -p "Do you want this system to have my graphical dotfiles? [Y/n]: " ANSWER
  case $ANSWER in
    [Yy] | [Yy][Ee][Ss] ) GRAPHICAL=true; break;;
    [Nn] | [Nn][Oo] ) GRAPHICAL=false; break;;
    * ) echo "Please answer [Y]es or [N]o"
  esac
done

if [ $GRAPHICAL == true ]; then
  ls */install.sh | bash
else
  ls . -I x -I dirs | awk '{print $0 "/install.sh"}' | bash
fi

echo
echo "All repos installed succesfully"
