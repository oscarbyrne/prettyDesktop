#!/bin/bash

source config.cfg

chmod +x ./prettyAgent.sh

PRETTYPATH=$(pwd)
INTERVAL=300 #interval to run prettyAgent, in seconds

echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">
<plist version=\"1.0\">
<dict>
	<key>Label</key>
	<string>local.prettydesktop</string>
	<key>Program</key>
	<string>$PRETTYPATH/prettyAgent.sh</string>
	<key>StartInterval</key>
	<integer>$INTERVAL</integer>
	<key>WorkingDirectory</key>
	<string>$PRETTYPATH</string>
</dict>
</plist>" > $HOME/Library/LaunchAgents/local.prettydesktop.plist

launchctl load -w $HOME/Library/LaunchAgents/local.prettydesktop.plist

echo "The prettyDesktop agent is now installed and will save an image to $IMAGE_DIR once every $INTERVAL seconds. Enjoy your colours and have a nice day!"