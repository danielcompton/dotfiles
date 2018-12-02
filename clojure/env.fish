# For ClojureScript development:

# Need to set this here, as this env.fish file is run before the Java one.
# set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -x JAVA_HOME "/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home"

set -x SPIDERMONKEY_HOME "$HOME/Developer/js-engines/jsshell-mac"
set -x NASHORN_HOME "$JAVA_HOME/bin"
set -x V8_HOME "/usr/local/bin"
