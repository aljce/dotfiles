set -e
echo "Installing Kyle McKean's x config"
mkdir -p "$HOME/.xmonad"
ln -sf "$PWD/x/xmonad-config/app/xmonad.hs" "$HOME/.xmonad/xmonad.hs" 
ln -sf "$PWD/x/xmobar/.xmobarrc" "$HOME/.xmobarrc"
ln -sf "$PWD/x/resources/.Xresources" "$HOME/.Xresources"
sudo mkdir -p "/usr/share"
sudo cp "$PWD/x/backgrounds/selected" "/usr/share/wallpaper"
echo "Kyle McKeans's x config installed"
