set -g -x PATH ~/bin $PATH
set -g -x fish_greeting ''

test -e {$HOME}/.iterm2_shell_integration.fish
and source {$HOME}/.iterm2_shell_integration.fish

function pport
    lsof -n -i :$argv[1]
end

function nport
    # macOS Awk is missing word boundaries so we just match on whitespace
    netstat -nt | awk "/\.$argv[1] / || NR <= 2"
end
