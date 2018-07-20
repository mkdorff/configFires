property MenuClickWrapper : load script POSIX file "/Users/mohonri/Documents/configFiles/applescripts/menu_click.scpt"

tell application "Font Book" to activate

tell MenuClickWrapper
  menu_click({"Font Book", "File", "Add Fonts…"})
end tell

tell application "System Events"
	-- adding fonts 
	delay 0.4
	key code 5 using {shift down, command down}
	delay 0.4
	keystroke "~/Documents/configFiles/assets"
	delay 0.8
	key code 36
	repeat 2 times
		key code 125
		delay 0.4
	end repeat
	key code 36
	delay 12 -- processing
	-- Ignore errors
	key code 48
	delay 0.4
	key code 49
	repeat 2 times
		key code 48
		delay 0.4
	end repeat
	key code 49
	delay 2
end tell

tell application "Font Book" to quit