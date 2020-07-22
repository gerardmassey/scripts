#!/bin/bash

OMZ=~/.oh-my-zsh

# Gerard's new machine setup

if [ ! -f "$OMZ" ]; then
	echo "[+] ohmyzsh not installed, installing ohmyzsh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

else
	"[+] ohmyzsh is already installed, skipping install"
fi

# Homebrew
echo "[+] Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# node.js
echo "[+] Installing node"
brew install node

# Create Github directory at ~/
echo "[+] Creating Github directory"
mkdir /Users/$USER/Github
cd /Users/$USER/Github

# Themes
echo "[+] Installing macOS Terminal Themes"
git clone https://github.com/lysyi3m/macos-terminal-themes.git

# Powerline fonts
echo "[+] Installing Powerline fonts"
git clone https://github.com/powerline/fonts.git
./fonts/install.sh

# Powerlevel9k
echo "[+] Installing Powerlevel9k"
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
echo "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc

# zsh-autosuggestions and zsh-syntax-highlighting
echo "[+] Installing zsh-autosuggestions and zsh-syntax-highlighting"
brew install zsh-syntax-highlighting
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
brew install zsh-autosuggestions
echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# thefuck
echo "[+] Installing thefuck"
brew install thefuck
echo "eval $(thefuck --alias)" >> ~/.zshrc

# fast-cli
echo "[+] Installing fast-cli"
npm install --global fast-cli

# public-ip
echo "[+] Installing public-ip"
npm install --global public-ip-cli

# axel
echo "[+] Installing axel"
brew install axel

# aria2c
echo "[+] Installing aria2c"
brew install aria2

# tldr
echo "[+] Installing tldr"
brew install tldr

# 1password
echo "[+] 1Password"
brew cask install 1password

# alfred
echo "[+] Alfred"
brew cask install alfred

# spotify
echo "[+] Spotify"
brew cask install spotify

# sublime text
echo "[+] Sublime Text"
brew cask install sublime-text

# discord
echo "[+] Discord"
brew cask install discord

# chrome
echo "[+] Google Chrome"
brew cask install google-chrome

# ccc
echo "[+] Carbon Copy Cloner"
brew cask install carbon-copy-cloner

# dropbox
echo "[+] Installing Dropbox"
brew cask install dropbox

# Set the time zone to NYC and full date in menubar
echo "[+] Setting timezone to NYC"
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d h:mm:ss a"
killall SystemUIServer
