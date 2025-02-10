#!/bin/zsh

brew bundle install --file Brewfile
cp karabiner.json ~/.config/karabiner/

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
