#!/bin/sh

set -x

defaults write NSGlobalDomain AppleKeyboardUIMode -int 3 # Enable full keyboard access for all controls
defaults write NSGlobalDomain AppleLanguages -array en # Set the language
defaults write NSGlobalDomain AppleLocale -string 'en_US@currency=USD' # Set the locale
defaults write NSGlobalDomain AppleMeasurementUnits -string Inches # Set the measurement unit
defaults write NSGlobalDomain AppleMetricUnits -bool false # Don't use metric units
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false # Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # Show all filename extensions
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 # Tap to click
defaults write NSGlobalDomain InitialKeyRepeat -int 10 # Repeat held keys quickly
defaults write NSGlobalDomain KeyRepeat -int 1 # Repeat held keys
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false # Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false # Disable smart dashes
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false # Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false # Disable smart quotes
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false # Disable auto-correct
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true # Disable automatic termination of inactive apps
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false # Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true # Display ASCII control characters using caret notation in standard text views

defaults write com.apple.Safari AutoFillCreditCardData -bool false # Disable AutoFill
defaults write com.apple.Safari AutoFillFromAddressBook -bool false # Disable AutoFill
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false # Disable AutoFill
defaults write com.apple.Safari AutoFillPasswords -bool false # Disable AutoFill
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false # Don't open safe downloaded files automatically
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true # Show the Web Inspector
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false # Disable Java
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false # Block pop-up windows
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled -bool false # Disable plug-ins
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true # Press tab to highlight each item on a web page
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false # Search using Contains instead of Starts With
defaults write com.apple.Safari HomePage -string 'about:blank' # Set Safari's home page to `about:blank` for faster loading
defaults write com.apple.Safari IncludeDevelopMenu -bool true # Show the Develop menu
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true # Update extensions automatically
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true # Enable Do Not Track
defaults write com.apple.Safari ShowFavoritesBar -bool false # Hide the bookmarks bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true # Show the full URL in the address bar
defaults write com.apple.Safari ShowSidebarInTopSites -bool false # Hide the sidebar in Top Sites
defaults write com.apple.Safari SuppressSearchSuggestions -bool true # Don't send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false # Don't send search queries to Apple
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true # Warn about fraudulent websites
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false # Disable auto-correct
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true # Enable continuous spell checking
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true # Show the Web Inspector
defaults write com.apple.Safari WebKitJavaEnabled -bool false # Disable Java
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false # Block pop-up windows
defaults write com.apple.Safari WebKitPluginsEnabled -bool false # Disable plug-ins
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true # Press tab to highlight each item on a web page

defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true # Automatically check for updates
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1 # Download newly available updates in the background
defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 1 # Automatically download apps purchased on other Macs
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1 # Install system data files and security updates

defaults write com.apple.commerce AutoUpdate -bool true # Apps update automatically

defaults write com.apple.dashboard mcx-disabled -bool true # Disable Dashboard

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true # Don't make .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true # Don't make .DS_Store files on USB volumes

defaults write com.apple.dock autohide -bool true # Automatically hide and show the dock
defaults write com.apple.dock dashboard-in-overlay -bool true # Don't show Dashboard as a space
defaults write com.apple.dock mineffect -string "scale" # Change minimize/maximize window effect
defaults write com.apple.dock minimize-to-application -bool true # Minimize windows into their application's icon
defaults write com.apple.dock mru-spaces -bool false # Don't automatically rearrange spaces based on most recent use
defaults write com.apple.dock persistent-apps -array # Wipe all default app icons from the dock
defaults write com.apple.dock static-only -bool true # Show only open applications in the dock
defaults write com.apple.dock tilesize -int 36 # Set the icon size of dock items to 36 pixels
defaults write com.apple.dock wvous-bl-corner -int 5 # Bottom left screen corner starts the screen saver
defaults write com.apple.dock wvous-bl-modifier -int 0 # Bottom left screen corner starts the screen saver
defaults write com.apple.dock wvous-br-corner -int 10 # Bottom right screen corner puts the display to sleep
defaults write com.apple.dock wvous-br-modifier -int 0 # Bottom right screen corner puts the display to sleep

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true # Tap to click

defaults write com.apple.finder _FXShowPosixPathInTitle -bool true # Display full POSIX path as Finder window title
defaults write com.apple.finder _FXSortFoldersFirst -bool true # Keep folders on top when sorting by name
defaults write com.apple.finder AppleShowAllFiles -bool false # Do not show hidden files by default
defaults write com.apple.finder DisableAllAnimations -bool true # Disable window animations and Get Info animations
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # When performing a search, search the current folder by default
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false # Disable the warning when changing a file extension
defaults write com.apple.finder FXInfoPanesExpanded -dict General -bool true OpenWith -bool true Privileges -bool true # Expand the "General", "Open with", and "Sharing & Permissions" File Info panes
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv" # Use list view by default
defaults write com.apple.finder NewWindowTarget -string "PfDe" # Start new windows at the desktop
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/" # Start new windows at the desktop
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true # Open a window when a new removable volume is mounted
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false # Hide external hard drives on the desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false # Hide hard drives on the desktop
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false # Hide mounted servers on the desktop
defaults write com.apple.finder ShowPathbar -bool false # Hide path bar
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false # Hide removable media on the desktop
defaults write com.apple.finder ShowStatusBar -bool true # Show status bar

defaults write com.apple.mail DisableInlineAttachmentViewing -bool true # Disable inline attachments (just show the icons)
defaults write com.apple.mail DraftsViewerAttributes -dict-add 'DisplayInThreadedMode' -string 'yes' # Display emails in threaded mode
defaults write com.apple.mail DraftsViewerAttributes -dict-add 'SortedDescending' -string 'yes' # Sort emails descending
defaults write com.apple.mail DraftsViewerAttributes -dict-add 'SortOrder' -string 'received-date' # Sort emails by date received
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled" # Disable automatic spell checking

defaults write com.apple.print.PrintingPrefs 'Quit When Finished' -bool true # Automatically quit printer app once the print jobs complete

defaults write com.apple.screensaver askForPassword -int 1 # Require password after sleep or screen saver begins
defaults write com.apple.screensaver askForPasswordDelay -int 0 # Require password immediately after sleep or screen saver begins

defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool true # Enable Resume system-wide

defaults write com.apple.terminal SecureKeyboardEntry -bool true # Enable Secure Keyboard Entry
defaults write com.apple.terminal ShowLineMarks -int 0 # Disable line marks
defaults write com.apple.terminal StringEncodings -array 4 # Use only use UTF-8