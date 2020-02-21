#!/bin/bash

PREFS=~/.zshrc

# Gerard's new machine setup

if [ ! -f "$PREFS" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Set the time zone to NYC and full date in menubar
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d h:mm:ss a"
killall SystemUIServer

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# node.js
brew install node

# Create Github directory at ~/
mkdir /Users/$USER/Github
cd /Users/$USER/Github

# Themes
git clone https://github.com/lysyi3m/macos-terminal-themes.git

# Powerline fonts
git clone https://github.com/powerline/fonts.git
./fonts/install.sh

# Powerlevel9k
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
echo "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc

# zsh-autosuggestions and zsh-syntax-highlighting
brew install zsh-syntax-highlighting
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
brew install zsh-autosuggestions
echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

# thefuck
brew install thefuck
echo "eval $(thefuck --alias)" >> ~/.zshrc

# fast-cli
npm install --global fast-cli

# axel
brew install axel

# aria2c
brew install aria2c

# tldr
brew install tldr
