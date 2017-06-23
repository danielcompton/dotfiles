# Enable syntax-highlighting in less.
# brew install source-highlight

if test -e (which highlight)
# TODO: Why is this so much slower than standard less?
  # set -x LESSOPEN "| highlight %s --out-format=xterm256 --quiet --force --style solarized-dark"
  # set -x LESS " -R "
  # function less
  #   command less -m -i -J --underline-special --SILENT $argv
  # end
end
