set -e
echo "Installing Kyle McKeans's Directories"
mkdir -p "$HOME/.config"
ln -sf "$PWD/dirs/user-dirs.dirs" "$HOME/.config/user-dirs.dirs"
echo "Kyle McKean's Directories installed"
