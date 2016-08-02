set -e
echo "Installing Spacemacs"
[ ! -d "$HOME/.emacs.d" ] && git clone https://github.com/syl20bnr/spacemacs.git "$HOME/.emacs.d"
[ ! -d "$HOME/.emacs.d/private/intero" ] && git clone https://github.com/cydparser/spacemacs-intero.git "$HOME/.emacs.d/private/intero"
echo "Spacemacs installed"
