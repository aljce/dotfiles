set -e
echo "Installing Kyle McKeans's Spacemacs files"
mkdir -p "$HOME/.spacemacs.d"
ln -sf "$PWD/spacemacs.d/init.el" "$HOME/.spacemacs.d/init.el"
ln -sf "$PWD/spacemacs.d/mail.el" "$HOME/.spacemacs.d/mail.el"
echo "Kyle McKean's Spacemacs files installed"
