# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
# if type -q gls
#   alias ls="gls -F --color"
#   alias l="gls -lAh --color"
#   alias ll="gls -l --color"
#   alias la='gls -A --color'
# end

alias lessrf="less --RAW-CONTROL-CHARS -F"
alias cutt="cut -c -$COLUMNS"