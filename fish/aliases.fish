alias reload!='. ~/.zshrc'
alias dotf='cd ~/.dotfiles'
alias mated='atom ~/.dotfiles/'
alias flushdns='sudo killall -HUP mDNSResponder'
alias flushhsts='launchctl unload /System/Library/LaunchAgents/com.apple.nsurlstoraged.plist; and sudo killall nsurlstoraged; rm -f ~/Library/Cookies/HSTS.plist; and launchctl load /System/Library/LaunchAgents/com.apple.nsurlstoraged.plist; echo "Empty Caches in Safari too, http->https redirects are cached."'


# set -g -x PATH ~/bin $PATH
# set -g -x fish_greeting ''
#
# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
#
# alias gap "git add --patch"
# alias gc "git commit --verbose"
# alias gca "git commit --amend"
# alias gd "git diff"
# alias gs "git status"
