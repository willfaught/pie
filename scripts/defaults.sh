#!/bin/sh

set -x

defaults write -g AppleKeyboardUIMode -int 2 # macOS 26 -> Enable full keyboard access for all controls
defaults write -g AppleShowAllExtensions -bool true # macOS 26 -> Show all filename extensions
defaults write -g InitialKeyRepeat -int 15 # macOS 26 -> System Settings -> Keyboard -> Delay until repeat
defaults write -g KeyRepeat -int 2 # macOS 26 -> System Settings -> Keyboard -> Key repeat rate
defaults write -g NSAutomaticCapitalizationEnabled -bool true # macOS 26 -> System Settings -> Keyboard -> Text Input -> [Input Source] -> Capitalize words automatically
defaults write -g NSAutomaticInlinePredictionEnabled -bool true # macOS 26 -> System Settings -> Keyboard -> Text Input -> [Input Source] -> Show inline predictive text
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool true # macOS 26 -> System Settings -> Keyboard -> Text Input -> [Input Source] -> Add period with double-space
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool true # macOS 26 -> System Settings -> Keyboard -> Text Input -> [Input Source] -> Use smart quotes and dashes
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool true # macOS 26 -> System Settings -> Keyboard -> Text Input -> [Input Source] -> Correct spelling automatically
defaults write -g NSCloseAlwaysConfirmsChanges -bool true # macOS 26 -> System Settings -> Desktop & Dock -> Windows -> Ask to keep changes when closing documents
defaults write -g NSQuitAlwaysKeepsWindows -bool true # macOS 26 -> System Settings -> Desktop & Dock -> Windows -> Close windows when quitting an application
defaults write -g NSSmartReplyEnabled -bool true # macOS 26 -> System Settings -> Keyboard -> Text Input -> [Input Source] -> Show suggested replies

defaults write com.apple.dock autohide -bool true # macOS 26 -> System Settings -> Desktop & Dock -> Dock -> Automatically hide and show the Dock
defaults write com.apple.dock expose-group-apps -bool false # macOS 26 -> System Settings -> Desktop & Dock -> Mission Control -> Group windows by application
defaults write com.apple.dock mru-spaces -bool false # macOS 26 -> System Settings -> Desktop & Dock -> Mission Control -> Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock persistent-apps -array # Wipe all default app icons from the dock
defaults write com.apple.dock tilesize -int 36 # macOS 26 -> System Settings -> Desktop & Dock -> Dock -> Size
defaults write com.apple.dock wvous-bl-corner -int 2 # macOS 26 -> System Settings -> Desktop & Dock -> Hot Corners -> [Bottom Left] -> Mission Control
defaults write com.apple.dock wvous-br-corner -int 10 # macOS 26 -> System Settings -> Desktop & Dock -> Hot Corners -> [Bottom Right] -> Put Display to Sleep

defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf' # Search the current folder
defaults write com.apple.finder FXPreferredViewStyle -string 'clmv' # Use column view
defaults write com.apple.finder NewWindowTarget -string 'PfHm' # Start new windows at the home directory
defaults write com.apple.finder NewWindowTargetPath -string 'file://${HOME}/' # Start new windows at the home directory
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false # Hide external hard drives on the desktop
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false # Hide removable media on the desktop
defaults write com.apple.finder ShowStatusBar -bool true # Show the status bar
defaults write com.apple.finder _FXSortFoldersFirst -bool true # Order folders first when sorting by name

defaults write com.apple.menuextra.clock DateFormat -string 'EEE d MMM h:mm a' # Show month and day in clock

defaults write com.apple.safari AutoFillCreditCardData -bool false # Disable AutoFill
defaults write com.apple.safari AutoFillFromAddressBook -bool false # Disable AutoFill
defaults write com.apple.safari AutoFillMiscellaneousForms -bool false # Disable AutoFill
defaults write com.apple.safari AutoFillPasswords -bool false # Disable AutoFill
defaults write com.apple.safari AutoOpenSafeDownloads -bool false # Don't open safe downloaded files automatically
defaults write com.apple.safari IncludeDevelopMenu -bool true # Show the Develop menu
defaults write com.apple.safari SendDoNotTrackHTTPHeader -bool true # Enable Do Not Track
defaults write com.apple.safari ShowFullURLInSmartSearchField -bool true # Show the full URL in the address bar
defaults write com.apple.safari ShowIconsInTabs -bool true # Show favicons in tabs
defaults write com.apple.safari WebKitTabToLinksPreferenceKey -bool true # Press tab to highlight each item on a web page

defaults -currentHost write com.apple.screensaver moduleDict -dict-add moduleName Arabesque path '/System/Library/Screen Savers/Arabesque.saver'

defaults write com.apple.terminal 'Default Window Settings' -string 'Dark Plus' # Default profile
defaults write com.apple.terminal 'Startup Window Settings' -string 'Dark Plus' # Default profile
defaults write com.apple.terminal ShowLineMarks -bool false # Hide line marks

killall Dock
killall Finder
