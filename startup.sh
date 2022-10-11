# Install general libraries

cd $HOME
sudo apt-get update
sudo apt install curl
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
sudo apt install tree

# Install zsh

sudo apt update
sudo apt install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ./.zshrc ~/.zshrc

# Install powershell

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# install ruby

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc
exec $SHELL

rbenv install 3.0.1
rbenv global 3.0.1
ruby -v

gem install bundler
rbenv rehash
gem install colorls


# Install kitty

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty.desktop

# Configure git

git config --global user.email jordisantamaria1a@gmail.com
git config --global user.name jordisantamaria

# Install brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

# Install last version of node and npm

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs

# Install yarn

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn

# Install docker

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Docker permissions

sudo chmod 666 /var/run/docker.sock
sudo usermod -aG docker ${USER}

# Install docker-compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo chown $(whoami):$(whoami) /var/run/docker.sock

# Change apache port 80 to 81

# sudo vim /etc/apache2/ports.conf
# change 80 to 81
# sudo vim /etc/apache2/sites-enabled/000-default.conf
# change 80 to 81
# restart
# systemctl restart apache2
# netstat -tlpn| grep apache
# ss -tlpn| grep apache


# Useful tools for nvim

brew install ranger
sudo apt-get install libxext-dev
pip install ueberzug
sudo apt-get install ripgrep
pip install pynvim
brew install neovim-remote
brew install fzf
sudo apt-get -y install xclip #clipboard with nvim

# Install mongodb tools

sudo apt-get update -y
sudo apt-get install -y mongo-tools


# Install snap for install flutter

sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
sudo apt install snapd

# Install flutter

sudo snap install flutter --classic

# Install android studio
# Download from https://developer.android.com/studio#downloads
# sudo mv ~/Descargas/android-studio /opt
# sh /opt/android-studio/bin/studio.sh
# android studio -> sdk manager -> sdk tools -> install Android SDK Command-line Tools
flutter doctor --android-licenses
# extra dependencies for flutter
sudo apt-get install clang cmake ninja-build pkg-config libgtk-3-dev
flutter config --enable-linux-desktop


# Pgadmin
cd ~
sudo mkdir /var/lib/pgadmin
sudo mkdir /var/log/pgadmin
sudo chown $USER /var/lib/pgadmin
sudo chown $USER /var/log/pgadmin
python3 -m venv pgadmin4
source pgadmin4/bin/activate
pip install pgadmin4
pgadmin4

# Install nvim

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
mv squashfs-root /squashfs-root
ln -s /squashfs-root/AppRun /usr/bin/nvim

# Change node version
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.zshrc
nvm install v16.14.0

# Install amplify
npm install -g @aws-amplify/cli

# Install composer

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
