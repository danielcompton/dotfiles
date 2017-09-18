#!/bin/bash

set -ex

# This is run once on startup by launchd
# Fixes https://github.com/git-up/GitUp/issues/35
ssh-add -A
