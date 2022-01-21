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

git clone https://github.com/Homebrew/brew homebrew
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"


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
brew install ripgrep
pip install pynvim
brew install neovim-remote
brew install fzf


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
