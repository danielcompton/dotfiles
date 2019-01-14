# For ClojureScript development:

# Need to set this here, as this env.fish file is run before the Java one.
# set -x JAVA_HOME (/usr/libexec/java_home -v 11)
set -x JAVA_HOME "/Library/Java/JavaVirtualMachines/adoptopenjdk-11.0.1.jdk/Contents/Home"

set -x SPIDERMONKEY_HOME "$HOME/Developer/js-engines/jsshell-mac"
set -x NASHORN_HOME "$JAVA_HOME/bin"
set -x V8_HOME "/usr/local/bin"

## For GPG
## See also https://blog.scottlowe.org/2017/09/06/using-keybase-gpg-macos/
set -x GPG_TTY (tty)
