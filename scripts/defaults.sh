#!/bin/sh

set -x

defaults write NSGlobalDomain AppleKeyboardUIMode -int 3 # Enable full keyboard access for all controls
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # Show all filename extensions
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 # Tap to click
defaults write NSGlobalDomain InitialKeyRepeat -int 15 # Repeat held keys quickly
defaults write NSGlobalDomain KeyRepeat -int 2 # Repeat held keys
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false # Disable capitalize words automatically
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false # Disable use smart quotes and dashes
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false # Disable add period with double-space
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false # Disable correct spelling automatically

# ???????????????????
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false # Save to disk (not to iCloud) by default

defaults write com.apple.Safari AutoFillCreditCardData -bool false # Disable AutoFill
defaults write com.apple.Safari AutoFillFromAddressBook -bool false # Disable AutoFill
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false # Disable AutoFill
defaults write com.apple.Safari AutoFillPasswords -bool false # Disable AutoFill
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false # Don't open safe downloaded files automatically
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true # Press tab to highlight each item on a web page
defaults write com.apple.Safari IncludeDevelopMenu -bool true # Show the Develop menu
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true # Enable Do Not Track
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true # Show the full URL in the address bar

defaults write com.apple.dock autohide -bool true # Automatically hide and show the dock

defaults write com.apple.dock mru-spaces -bool false # Don't automatically rearrange spaces based on most recent use
defaults write com.apple.dock persistent-apps -array # Wipe all default app icons from the dock
defaults write com.apple.dock static-only -bool true # Show only open applications in the dock
defaults write com.apple.dock tilesize -int 36 # Set the icon size of dock items to 36 pixels
defaults write com.apple.dock wvous-bl-corner -int 5 # Bottom left screen corner starts the screen saver
defaults write com.apple.dock wvous-bl-modifier -int 0 # Bottom left screen corner starts the screen saver
defaults write com.apple.dock wvous-br-corner -int 10 # Bottom right screen corner puts the display to sleep
defaults write com.apple.dock wvous-br-modifier -int 0 # Bottom right screen corner puts the display to sleep

defaults write com.apple.finder _FXSortFoldersFirst -bool true # Keep folders on top when sorting by name
defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf' # When performing a search, search the current folder by default
defaults write com.apple.finder FXPreferredViewStyle -string 'clmv' # Use list view by default
defaults write com.apple.finder NewWindowTarget -string 'PfDe' # Start new windows at the desktop
defaults write com.apple.finder NewWindowTargetPath -string 'file://${HOME}/Desktop/' # Start new windows at the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false # Hide external hard drives on the desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false # Hide removable media on the desktop
defaults write com.apple.finder ShowStatusBar -bool true # Show status bar

# defaults write com.apple.screensaver askForPassword -int 1 # Require password after sleep or screen saver begins
# defaults write com.apple.screensaver askForPasswordDelay -int 0 # Require password immediately after sleep or screen saver begins

# defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool true # Enable Resume system-wide

defaults write com.apple.Terminal ShowLineMarks -int 0 # Disable line marks

killall Dock
killall Finder
