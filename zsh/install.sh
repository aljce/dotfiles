set -e
echo "Installing Zsh-Users Antigen"
ln -sf "$PWD/zsh/antigen/antigen.zsh" "$HOME/.antigen.zsh"
echo "Installed Zsh-Users Antigen"
echo "Installing Kyle McKeans's Zsh Files"
ln -sf "$PWD/zsh/zshrc" "$HOME/.zshrc"
echo "Kyle McKean's Zsh Files installed"

