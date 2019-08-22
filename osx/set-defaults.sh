# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 2

# Set a higher mouse speed than is possible in System Preferences
defaults write -g com.apple.mouse.scaling 5.0

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Show home folder when opening new windows
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Safari
defaults write com.apple.Safari ShowFavoritesBar -bool false
defaults write com.apple.Safari ShowStatusBar -bool true
defaults write -app Safari SendDoNotTrackHTTPHeader -int 1
defaults write -app Safari AutoFillPasswords -int 0
defaults write -app Safari AutoFillFromAddressBook -int 0
defaults write -app Safari AutoFillMiscellaneousForms -int 0
defaults write -app Safari ShowFullURLInSmartSearchField -int 1
defaults write -app Safari ShowSidebarInTopSites -int 0
# Show the URL preview in bottom left
defaults write -app Safari ShowOverlayStatusBar -int 1
defaults write com.apple.Safari HomePage -string "about:blank"
defaults write com.apple.Safari NewWindowBehavior -int 1 # Empty Page
defaults write com.apple.Safari NewTabBehavior -int 1 # Empty Page
# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# Make Safari’s search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false
# Reopen all windows from last time
defaults write com.apple.Safari AlwaysRestoreSessionAtLaunch -int 1
defaults write com.apple.Safari OpenPrivateWindowWhenNotRestoringSessionAtLaunch -int 0
# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Calendar
defaults write com.apple.iCal "first day of week" -int 0

# Sort new messages in a thread to the top
defaults write com.apple.mail ConversationViewSortDescending -int 1
# Archive messages instead of deleting them
defaults write com.apple.mail SwipeAction -int 1 # 0 is delete, 1 is archive
# Set e as the Archive key
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Archive" -string "e"
# Notify only for VIP messages
defaults write com.apple.mail MailUserNotificationScope -int 2
# Turn off new message sound
defaults write com.apple.mail NewMessagesSoundName -string ""
# Don't show message preview
defaults write com.apple.mail NumberOfSnippetLines -int 0


# Disable new window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool NO

# Enable Text Selection in Quick Look Windows
defaults write com.apple.finder QLEnableTextSelection -bool TRUE;killall Finder

# Dock/Expose
# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → Desktop
defaults write com.apple.dock wvous-tl-corner -int 4
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Mission Control
defaults write com.apple.dock wvous-tr-corner -int 2
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Application windows
# defaults write com.apple.dock wvous-bl-corner -int 3
# defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right screen corner → Notification Center
defaults write com.apple.dock wvous-br-corner -int 12
defaults write com.apple.dock wvous-br-modifier -int 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0
# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Use the system-native print preview dialog
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Sort contacts by first name, then last name
defaults write com.apple.AddressBook ABNameSortingFormat -string "sortingFirstName sortingLastName"

# Kill all affected apps (except Safari, because it's annoying to close that one)
for app in "cfprefsd" "Dock" "Finder" "Mail" "Kaleidoscope" "Tower" "SystemUIServer"; do
	killall "${app}" > /dev/null 2>&1
done

# Don't warn when changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

### Third Party Apps

# GitUp

defaults write co.gitup.mac FirstLaunch -int 0
defaults write co.gitup.mac "HelpShown_COMMIT" -int 2
defaults write co.gitup.mac "HelpShown_MAP" -int 4
defaults write co.gitup.mac "HelpShown_QUICKVIEW" -int 1
defaults write co.gitup.mac "HelpShown_RESOLVE" -int 1
defaults write co.gitup.mac "HelpShown_STASHES" -int 1
defaults write co.gitup.mac SUAutomaticallyUpdate -int 1
defaults write co.gitup.mac "GIViewController_DiffTool" -string "Kaleidoscope"
defaults write co.gitup.mac "GIViewController_MergeTool" -string "Kaleidoscope"
defaults write co.gitup.mac "GIMapViewController_SkipPullBranchWarning" -int 1
defaults write co.gitup.mac "GIMapViewController_SkipPushBranchWarning" -int 1

# iTerm2

defaults write com.googlecode.iterm2 OnlyWhenMoreTabs -int 0

# Kaleidoscope

defaults write com.blackpixel.kaleidoscope KSIgnoreWhitespaceUserDefaultsKey -int 1

# Jumpcut
# Set shortcut to Command + Shift + v
# See # https://github.com/Hammerspoon/hammerspoon/issues/1021 for details
defaults write net.sf.Jumpcut "ShortcutRecorder mainHotkey" '{ keyCode = 9; modifierFlags = 1179648; }'
defaults write net.sf.Jumpcut "rememberNum" -int 90
defaults write net.sf.Jumpcut "displayNum" -int 10

# Calca

defaults write com.kruegersystems.calca.mac QuickEntryHotKeyDisabled -int 1

# Harvest

defaults write com.getharvest.harvestx SUEnableAutomaticCheck -int 1

# Reeder

defaults write com.reederapp.rkit2.mac AppIconUnreadCount -int 2
defaults write com.reederapp.rkit2.mac AppOrderUnreadItems -int 1

# nvAlt

defaults write net.elasticthreads.nv ShowGrid -int 0

# OmniFocus

defaults write com.omnigroup.OmniFocus2 OOReturnShouldCreateNewRow -int 1
defaults write com.omnigroup.OmniFocus2 OOShouldToggleEditingWithEscapeKey -int 1
defaults write com.omnigroup.OmniFocus2 ForecastShowDeferredItemsSection -int 1
defaults write com.omnigroup.OmniFocus2 OSUIncludeHardwareDetails -int 1
defaults write com.omnigroup.OmniFocus2 PreferredLayoutMode -string "columns"
defaults write com.omnigroup.OmniFocus2 TryProEdition -int 1
defaults write com.omnigroup.OmniFocus2 ShowInboxInProjects -int 1

# Logic

defaults write com.apple.logic10 FeatureAvailable_ExpertAudio -int 1

# Stars

defaults write com.karelia.Stars hidesCompletely -int 1
defaults write com.karelia.Stars hidesCompletelyAlertSuppress -int 1
defaults write com.karelia.Stars popUpEnabled -int 0
defaults write com.karelia.Stars unratedNotificationEnabled -int 0

# Postgres.app

defaults write com.postgresapp.Postgres2 ClientAppName -string "iTerm"
