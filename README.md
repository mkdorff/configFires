# Config Files
0 to 100, real quick
---

## Instructions:
1. Make sure your username is 'mohonri'! If it is not, it will be a pain later.
2. `cd $HOME/Documents` - Executive decision to have this under Documents
3. `git` - This prompts the install for xcode command line tools 
4. `git clone https://github.com/mkdorff/configFiles.git && cd configFiles`
5. `osascript applescripts/init.scpt` - Will be informed that terminal does not have accessibility rights, enable this
6. `chmod +x setupMac.sh && ./setupMac.sh`
90. *** Revert "Full Keyboard Access" to default *** write script to do this 
7. remove terminal from accessibilty control
8. Final manual configs, refer to `setupMac.sh`

This gets us 80% there. Everything else is manual and as I get better at AppleScript (JS works too now?), more things
will be automated.

## Assumptions:
1. User name for computer is 'mohonri'
2. Path of this configFiles folder: /Users/mohonri/Documents/configFiles