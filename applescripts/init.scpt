-- Enables 'All controls' for 'Full Keyboard Access'
tell application "System Events"
  key code 98 using control down
end tell

property MenuClickWrapper : load script POSIX file "/Users/mohonri/Documents/configFiles/applescripts/menu_click.scpt"

-- Something harmless that prompts you to approve terminal accessibility control
tell MenuClickWrapper
  menu_click({"Terminal", "View", "Show Tab Bar"})
end tell
