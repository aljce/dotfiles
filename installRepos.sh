set -e
ls */install.sh | bash
echo "Installing Liquid Prompt"
[ -e $HOME/.bashrc ] && rm "$HOME/.bashrc"
echo "[[ \$- = *i* ]] && source $PWD/liquidprompt/liquidprompt" >> $HOME/.bashrc
echo "Liquid Prompt installed succesfully"
echo "All repos installed succesfully"
