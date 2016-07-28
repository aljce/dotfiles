set -e
echo "Installing Brendan Thompson's keycrypt script to out/keycrypt"
mkdir out
curl https://raw.githubusercontent.com/BrendanThompson/keycrypt/master/keycrypt > out/keycrypt
chmod u+x out/keycrypt
echo "Brendan Thompson's keycrypt script installed"
