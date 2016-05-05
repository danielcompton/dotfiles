alias prof="vim $HOME/.lein/profiles.clj"

function dirac
  /Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary \
                                   --remote-debugging-port=9222 \
                                   --no-first-run \
                                   --user-data-dir=/Users/danielcompton/cd.dirac-chrome-profile ^ /dev/null ^^/dev/null &
end

# alias dirac="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --remote-debugging-port=9222 --no-first-run  --user-data-dir=~/.dirac-chrome-profile"
