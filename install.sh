#!/usr/bin/env bash
set -e
ls */install.sh | bash
echo "Installing Zsh-Users Antigen"
ln -sf "$PWD/antigen/antigen.zsh" "$HOME/.antigen.zsh"
echo "Installed Zsh-Users Antigen"
echo "All repos installed succesfully"
