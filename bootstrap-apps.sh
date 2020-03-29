# Install favorite programs 
# Curl
apt-get install curl
# Symlink config files 
rm -rf /etc/x11/xorg.confg.d.backup
cp -r /etc/x11/xrog.conf.d /etc/x11/xorg.confg.d.backup
rm -rf /etc/X11/xorg.conf.d
ln -s ~/dotfiles/xorg.conf.d/ /etc/X11/xorg.conf.d/
# Neovim
apt-get install neovim
# Docker
apt-get install apt-transport-https ca-certificates gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#TODO: Verify finger print
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list
apt-get update
apt-get install spotify-client
