#!/bin/bash

# ZSH, Oh my!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh::g' | sed 's:chsh -s .*$::g')"
rm $HOME/.zshrc

# Link config files
ln -s "$HOME/Documents/configFiles/zshrc" "$HOME/.zshrc"
source "$HOME/.zshrc"
ln -s "$CONFIG_PATH/vimrc" "$HOME/.vimrc"
ln -s "$CONFIG_PATH/gitconfig" "$HOME/.gitconfig"
ln -s "$CONFIG_PATH/gitignore_global" "$HOME/.gitignore_global"

# Start with brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
# Binaries & set default zsh
brew install mas nvm mongodb mysql redis ripgrep tldr tree neovim zsh
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
echo "source $(brew --prefix nvm)/nvm.sh" >> "$HOME/.zshrc"
# GUI Apps
brew cask install google-chrome cheatsheet docker firefox iterm2 leech mplayerx openemu pdf-expert postman principle \
                  sequel-pro sketch slack spectacle spotify the-unarchiver transmission visual-studio-code windscribe
source "$HOME/.zshrc"
# AppStore Apps
mas signin mohonrid@gmail.com # Just in case
mas install 784801555  # OneNote 16.15
mas install 409201541  # Pages 7.1
mas install 1176895641 # Spark 2.0.8
mas install 585829637  # Todoist 7.0.14
mas install 497799835  # Xcode 9.4.1
sudo xcodebuild -license accept
mas upgrade

# NVM
mkdir ~/.nvm
ln -s "$CONFIG_PATH/default-packages" "$NVM_DIR/default-packages"
source "$HOME/.zshrc"
nvm install node

# App Specific AppleScripts

# Misc
# Fonts
# Wallpapers
# Misc Apple Scripts?

# Chrome:
# Prompt to set default and send stats

# vscode:
# other configs

# cheatsheet
# prefs > security & privacy > accessibility

# Docker

# Firefox


# option to 


# Under Prefs:
