#!/bin/zsh

export HOMEBREW_NO_AUTO_UPDATE=1
brew bundle install --file Brewfile

# use specific pure 1.23.0 due to some change in prompt format with venv
curl -o /tmp/pure.rb https://raw.githubusercontent.com/Homebrew/homebrew-core/6822ee47cea80d875e3d0395a361bfc45e17e80d/Formula/p/pure.rb
# set HOMEBREW_DEVELOPER=1 since installing local formulae is disallowed https://github.com/Homebrew/brew/issues/20614#issuecomment-3242822795
HOMEBREW_DEVELOPER=1 brew install --formula /tmp/pure.rb
brew pin pure

# install iterm2 3.5 since 3.6 shows changelog popup permanently on every open
curl -L https://iterm2.com/downloads/stable/iTerm2-3_5_14.zip -o /tmp/iterm2-3.5.14.zip
unzip /tmp/iterm2-3.5.14.zip -d /tmp/iterm2-3.5.14/
sudo mv /tmp/iterm2-3.5.14/iTerm.app /Applications/iTerm.app

mkdir -p ~/.config/karabiner && cp karabiner.json ~/.config/karabiner/
mkdir -p ~/.local/bin && cp -r ../bin/* ~/.local/bin/

sudo cp iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/
mkdir -p ~/Library/Keybindings/ && sudo cp DefaultKeyBinding.dict ~/Library/Keybindings/
mkdir -p ~/Library/Application\ Support/Sublime\ Text/ && sudo cp -r ../sublime-text-3/ ~/Library/Application\ Support/Sublime\ Text/

# Removes the caps lock delay. Could also be in ~/Library/LaunchAgents/
# Can also move to ~/Library/LaunchAgents/
sudo cp local.removecapslockdelay.plist /Library/LaunchDaemons/

# Turns on natural scrolling (so that it's inverted, swipe up is down, swipe down is up). Trackpad only thing?
# Settings > Trackpad > Scroll & Zoom > Natural Scrolling is ON
# defaults write -g com.apple.swipescrolldirection -bool true

# Turns off the clicking wallpaper to reveal desktop
# TODO: setting is wrong?
# defaults write -g com.apple.WindowManager EnableStandardClickToShowDesktop -bool false

# Allows you to tap with two fingers and click the bottom right on the trackpad instead of xor
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true

# Minimizes the dock delay and animation speed
defaults write com.apple.dock autohide-delay -float 0.01
defaults write com.apple.dock autohide-time-modifier -float 0.2
killall Dock

source ~/.zshrc
