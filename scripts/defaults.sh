#!/bin/sh

set -x

defaults write -g AppleKeyboardUIMode -int 2 # macOS 26 -> Enable full keyboard access for all controls
defaults write -g AppleShowAllExtensions -bool true # macOS 26 -> Finder Settings -> Advanced -> Show all filename extensions
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

defaults write com.apple.finder FXDefaultSearchScope -string 'SCcf' # macOS 26 -> Finder Settings -> Advanced -> When performing a search -> Search the Current Folder
defaults write com.apple.finder FXPreferredViewStyle -string 'clmv' # Use column view
defaults write com.apple.finder NewWindowTarget -string 'PfHm' # macOS 26 -> Finder Settings -> General -> New Finder windows show -> [Home]
defaults write com.apple.finder NewWindowTargetPath -string 'file://${HOME}/' # macOS 26 -> Finder Settings -> General -> New Finder windows show -> [Home]
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false # macOS 26 -> Finder Settings -> General -> Show these items on the desktop -> External disks
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false # macOS 26 -> Finder Settings -> General -> Show these items on the desktop -> CDs, DVDs, and iPods
defaults write com.apple.finder ShowStatusBar -bool true # Show the status bar
defaults write com.apple.finder _FXSortFoldersFirst -bool true # macOS 26 -> Finder Settings -> Advanced -> Keep folders on top -> In windows when sorting by name, On Desktop

defaults write com.apple.menuextra.clock DateFormat -string 'EEE d MMM h:mm a' # Show month and day in clock

defaults write com.apple.safari AutoFillCreditCardData -bool false # Safari Settings -> AutoFill -> AutoFill web forms -> Credit cards
defaults write com.apple.safari AutoFillFromAddressBook -bool false # Safari Settings -> AutoFill -> AutoFill web forms -> Using information from my contacts
defaults write com.apple.safari AutoFillMiscellaneousForms -bool false # Safari Settings -> AutoFill -> AutoFill web forms -> Other forms
defaults write com.apple.safari AutoFillPasswords -bool false # Safari Settings -> AutoFill -> AutoFill web forms -> User names and passwords
defaults write com.apple.safari AutoOpenSafeDownloads -bool false # Safari Settings -> General -> Open "safe" files after downloading
defaults write com.apple.safari IncludeDevelopMenu -bool true # Safari Settings -> Advanced -> Show features for web developers
defaults write com.apple.safari SendDoNotTrackHTTPHeader -bool true # Safari Settings -> Privacy -> Website tracking -> Prevent cross-site tracking
defaults write com.apple.safari ShowFullURLInSmartSearchField -bool true # Safari Settings -> Advanced -> Show full website address
defaults write com.apple.safari ShowIconsInTabs -bool true # Show favicons in tabs
defaults write com.apple.safari WebKitTabToLinksPreferenceKey -bool true # Safari Settings -> Advanced -> Press Tab to highlight each item on a webpage

defaults -currentHost write com.apple.screensaver moduleDict -dict-add moduleName Arabesque path '/System/Library/Screen Savers/Arabesque.saver'

defaults write com.apple.terminal 'Default Window Settings' -string 'Dark Plus' # Default profile
defaults write com.apple.terminal 'Startup Window Settings' -string 'Dark Plus' # Default profile
defaults write com.apple.terminal ShowLineMarks -bool false # Hide line marks

killall Dock
killall Finder
