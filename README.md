```
#!

                 _   _         _____            _    _              
                | | | |       |  __ \          | |  | |             
  _ __  _ __ ___| |_| |_ _   _| |  | | ___  ___| | _| |_ ___  _ __  
 | '_ \| '__/ _ \ __| __| | | | |  | |/ _ \/ __| |/ / __/ _ \| '_ \ 
 | |_) | | |  __/ |_| |_| |_| | |__| |  __/\__ \   <| || (_) | |_) |
 | .__/|_|  \___|\__|\__|\__, |_____/ \___||___/_|\_\\__\___/| .__/ 
 | |                      __/ |                              | |    
 |_|                     |___/                               |_|    
```


PrettyDesktop fetches colours from prettycolors.tumblr.com as they are posted and saves them to a folder for use as desktop backgrounds. Set your desktop background to use images from this folder and have a lovely parade of colours march across your desk each day.


Note, image directory and maximum number of images to store can be set in the 'config.cfg' file. 
If you want to move the prettyDesktop directory, uninstall and then reinstall in the new location.
```
#!bash
source prettydesktop/uninstall.sh
mv prettydesktop $NEW_PATH
source prettydesktop/install.sh

```