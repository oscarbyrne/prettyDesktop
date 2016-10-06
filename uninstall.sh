#!/bin/bash

source config.cfg

launchctl unload -w $HOME/Library/LaunchAgents/local.prettydesktop.plist
rm $HOME/Library/LaunchAgents/local.prettydesktop.plist

echo "The prettyDesktop agent is now uninstalled. Don't forget to remove the image directory at $IMAGE_DIR if you want to get rid of everything prettyDesktop!"