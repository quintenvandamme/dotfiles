# sassc is needed in order to compile dash to dock
sudo dnf install sassc

git clone https://github.com/ewlsh/dash-to-dock/
cd dash-to-dock
git checkout ewlsh/gnome-40
make
make install

echo "go to https://extensions.gnome.org/local/ to enable dash to dock"
