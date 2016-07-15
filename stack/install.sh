set -e
echo "Installing Kyle McKeans's Haskell Stack Config"
mkdir -p "$HOME/.stack"
ln -sf "$PWD/stack/config.yaml" "$HOME/.stack/config.yaml"
echo "Kyle McKean's Haskell Stack Config installed"
