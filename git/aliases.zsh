# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --ff-only --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push'
alias gd='git diff'
alias gc='git commit --verbose'
alias gca='git commit --amend --verbose'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.

alias gap="git add --patch"
alias gdt="git difftool"
alias gcm="git commit -m"
alias gmt="git mergetool"
alias grhh="git reset HEAD --hard"
alias grb="git rebase"
alias grbc="git rebase --continue"
alias gst="git stash"
alias gstp="git stash pop"
alias ga.="git add ."
alias ga="git add"
alias gcl="git clone"
alias gw="git wtf"
