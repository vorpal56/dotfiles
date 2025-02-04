## TODO: if possible, make a script that does all this

1. Turn off natural scrolling (so that it's not inverted) by going into Settings > Trackpad > Scroll & Zoom > Natural Scrolling is OFF
2. Copy local.removecapslockdelay.plist into /Library/LaunchDaemons/ or ~/Library/LaunchAgents/. If neither of those folders exist, create them - https://github.com/gkpln3/CapsLockNoDelay/issues/22#issuecomment-2594362547
3. Install Homebrew and add to .zshrc - https://brew.sh/ `echo "eval \"$(/opt/homebrew/bin/brew shellenv)\" > ~/.zshrc`
4. Install Brave - https://brave.com/download/
5. Install Mos for mouse smooth scrolling - https://github.com/Caldis/Mos/blob/master/README.enUS.md
6. Install Karabiner elements for key remapping to Windows/Linux style - https://karabiner-elements.pqrs.org/
7. Install Windows key remaps for Karabiner by opening a new tab in putting into the URL bar: `karabiner://karabiner/assets/complex_modifications/import?url=https://raw.githubusercontent.com/vorpal56/dotfiles/master/mac/karabiner.json`
8. Turn off clicking wallpaper to reveal desktop by going into Settings > Desktop & Dock > Desktop & Stage Manager > Click wallpaper to reveal desktop is Only in Stage Manager
9. Turn off margins when using spaces by going into Settings > Desktop & Dock > Windows > Tiled windows have margins is OFF
10. Minimize dock delay and animation speed: `defaults write com.apple.dock autohide-delay -float 0.01; defaults write com.apple.dock autohide-time-modifier -float 0.2; killall Dock`
11. pure zsh - `brew install pure`
12. Iterm2 - go to profiles > default > keys > general, change left option key and right option key from normal to esc+. go to key mappings tab, add preset for Terminal.app compability. Profile is `iterm2_profile.json`
13. Rectangle - https://rectangleapp.com/

## Considerations:

1. Alfred: not really sure what I can use it for - https://www.alfredapp.com/
2. Sidebar: cause the default dock is trash. would like the dock on both screens on the left. its not that expensive - https://sidebarapp.net/
3. Yabai or Amethyst: for tiling window management. need to figure out the details of spaces and other things - https://github.com/koekeishiya/yabai or https://github.com/ianyh/Amethyst
