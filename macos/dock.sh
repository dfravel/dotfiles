#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Arc.app"
dockutil --no-restart --add "/Applications/Spotify.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"

killall Dock
