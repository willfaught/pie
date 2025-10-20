#!/bin/sh

set -x

defaults write -g AppleKeyboardUIMode -int 2 # Enable full keyboard access for all controls
defaults write -g AppleShowAllExtensions -bool true # Show all filename extensions
defaults write -g InitialKeyRepeat -int 15 # macOS 26 -> System Settings -> Keyboard -> Delay until repeat
defaults write -g KeyRepeat -int 2 # macOS 26 -> System Settings -> Keyboard -> Key repeat rate
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool true # macOS 26 -> System Settings -> Keyboard -> Text Input -> [Input Source] -> Add period with double-space
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool true # macOS 26 -> System Settings -> Keyboard -> Text Input -> [Input Source] -> Correct spelling automatically
defaults write -g NSCloseAlwaysConfirmsChanges -bool true # System Settings -> Desktop & Dock -> Windows -> Ask to keep changes when closing documents
defaults write -g NSQuitAlwaysKeepsWindows -bool true # System Settings -> Desktop & Dock -> Windows -> Close windows when quitting an application

defaults -currentHost write com.apple.applemultitouchtrackpad Clicking -bool true # System Preferences -> Trackpad -> Point & Click -> Tap to click

defaults -currentHost write com.apple.dock autohide -bool true # Automatically hide and show the dock
defaults -currentHost write com.apple.dock expose-group-apps -bool false # Don't group windows by app in Expose
defaults -currentHost write com.apple.dock mru-spaces -bool false # Don't automatically rearrange spaces based on most recent use
defaults -currentHost write com.apple.dock persistent-apps -array # Wipe all default app icons from the dock
defaults -currentHost write com.apple.dock showAppExposeGestureEnabled -bool true # System Preferences -> Trackpad -> More Gestures -> App Expose
defaults -currentHost write com.apple.dock tilesize -int 36 # Dock icon size is 36 pixels
defaults -currentHost write com.apple.dock wvous-bl-corner -int 2 # Bottom left screen corner opens Mission Control
defaults -currentHost write com.apple.dock wvous-br-corner -int 10 # Bottom right screen corner puts the display to sleep

defaults -currentHost write com.apple.driver.applebluetoothmultitouch.trackpad Clicking -bool true # System Preferences -> Trackpad -> Point & Click -> Tap to click

defaults -currentHost write com.apple.finder _FXSortFoldersFirst -bool true # Order folders first when sorting by name
defaults -currentHost write com.apple.finder FXDefaultSearchScope -string 'SCcf' # Search the current folder
defaults -currentHost write com.apple.finder FXPreferredViewStyle -string 'clmv' # Use column view
defaults -currentHost write com.apple.finder NewWindowTarget -string 'PfHm' # Start new windows at the home directory
defaults -currentHost write com.apple.finder NewWindowTargetPath -string 'file://${HOME}/' # Start new windows at the home directory
defaults -currentHost write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false # Hide external hard drives on the desktop
defaults -currentHost write com.apple.finder ShowRemovableMediaOnDesktop -bool false # Hide removable media on the desktop
defaults -currentHost write com.apple.finder ShowStatusBar -bool true # Show the status bar

defaults write com.apple.menuextra.clock DateFormat -string 'EEE d MMM h:mm a' # Show month and day in clock

defaults -currentHost write com.apple.safari AutoFillCreditCardData -bool false # Disable AutoFill
defaults -currentHost write com.apple.safari AutoFillFromAddressBook -bool false # Disable AutoFill
defaults -currentHost write com.apple.safari AutoFillMiscellaneousForms -bool false # Disable AutoFill
defaults -currentHost write com.apple.safari AutoFillPasswords -bool false # Disable AutoFill
defaults -currentHost write com.apple.safari AutoOpenSafeDownloads -bool false # Don't open safe downloaded files automatically
defaults -currentHost write com.apple.safari IncludeDevelopMenu -bool true # Show the Develop menu
defaults -currentHost write com.apple.safari SendDoNotTrackHTTPHeader -bool true # Enable Do Not Track
defaults -currentHost write com.apple.safari ShowFullURLInSmartSearchField -bool true # Show the full URL in the address bar
defaults -currentHost write com.apple.safari ShowIconsInTabs -bool true # Show favicons in tabs
defaults -currentHost write com.apple.safari WebKitTabToLinksPreferenceKey -bool true # Press tab to highlight each item on a web page

defaults -currentHost write com.apple.screensaver moduleDict -dict-add moduleName Arabesque path '/System/Library/Screen Savers/Arabesque.saver'

defaults -currentHost write com.apple.terminal ShowLineMarks -bool false # Hide line marks
defaults write com.apple.terminal 'Default Window Settings' -string 'VS Code Dark Plus' # Default profile
defaults write com.apple.terminal 'Startup Window Settings' -string 'VS Code Dark Plus' # Default profile

killall Dock
killall Finder
