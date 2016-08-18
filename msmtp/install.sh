set +e
echo "Installing Kyle McKeans's msmtp Files"
chmod 600 "$PWD/msmtp/msmtprc"
ln -sf "$PWD/msmtp/msmtprc" "$HOME/.msmtprc"
echo "Kyle McKean's msmtp files installed"
