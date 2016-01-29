set -g -x PATH ~/bin $PATH
set -g -x fish_greeting ''

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

function pport
  lsof -n -i:$argv[1] | grep LISTEN
end