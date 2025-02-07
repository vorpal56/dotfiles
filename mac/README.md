Run:

```bash
cd ~
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd mac/
cat .zshrc > ~/.zshrc
source ~/.zshrc
./setup.sh
```

1. Turn off clicking wallpaper to reveal desktop by going into Settings > Desktop & Dock > Desktop & Stage Manager > Click wallpaper to reveal desktop is Only in Stage Manager
2. Configure the settings of mos, rectangle, dockdoor, karabiner-elements

   - to open on login
   - TODO: figure out how to copy settings through setup.sh? there's plist files in ~/Library/Preferences? eg. `iterm2_profile.json`

## Considerations:

1. Alfred: not really sure what I can use it for - https://www.alfredapp.com/
2. Sidebar: cause the default dock is trash. would like the dock on both screens on the left. its not that expensive - https://sidebarapp.net/
3. Yabai or Amethyst: for tiling window management. need to figure out the details of spaces and other things - https://github.com/koekeishiya/yabai or https://github.com/ianyh/Amethyst
