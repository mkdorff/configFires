#!/bin/bash

# ZSH, Oh my! - This is hacky
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
brew install mas mongodb mysql neovim nvm pipenv pyenv redis ripgrep tldr tree watchman zsh
brew install yarn --without-node
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
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

# Dock - This may or may not work
mkdir ~/Documents/Projects
rm "$HOME/Library/Preferences/com.apple.dock.plist"
ln -s "$CONFIG_PATH/dock.plist" "$HOME/Library/Preferences/com.apple.dock.plist"
killall Dock

# App Specific AppleScripts
osascript "$CONFIG_SCRIPTS/fonts.scpt"
osascript "$CONFIG_SCRIPTS/finish.scpt"

# ...then
# Prefs:
#   Wallpapers, change picture, random
#   Screensavers?
#   Hot spots
#   sec & priv -> privacy -> accessibily -> cheatsheet/spectacle
#   Accesibilty -> Speech, Alex, Fastest, shortcut: control+option+command+space
#   Display, Retina, scale high
#   Allow apps from unindentifed developers
#   24 hour clock
# Menu bar: minimalize - wifi, battery, clock
# Update Mac
# Setup RSA (SSH w/ Github)
# Setup Chrome (NOT Default, Never ask, don't import), Login mohonrid@gmail & mk@dorff...
# Spotify: Login
# Spark: Login
# vscode: extensions, command line install, settings
# OneNote: Login
# Todoist: Login
# PDFExpert: enter key, also, idk find the key?
# Xcode: enter creds?
# Sketch: enter key, idk find the key?
# Windscribe: login
# Startup items: disable
# Device enrollment, disable
# Unallow terminal to gain control of mac. For security

# Manual
# OpenEmu - Ya know
# Git pull projects into projects
# Download:
#   Fusion 360 & Eagle
#   Adobe Photoshop & XD
#   Invision Studio
