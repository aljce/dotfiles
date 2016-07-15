set +e
echo "Installing Kyle McKeans's Offlineimap Files"
ln -sf "$PWD/offlineimap/offlineimaprc" "$HOME/.offlineimaprc"
ln -sf "$PWD/offlineimap/offlineimap.py" "$HOME/.offlineimap.py"
echo "Kyle McKean's Offlineimap Files installed"
