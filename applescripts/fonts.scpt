property MenuClickWrapper : load script POSIX file "/Users/mohonri/Documents/configFiles/applescripts/menu_click.scpt"

tell application "Font Book" to activate

tell MenuClickWrapper
  menu_click({"Font Book", "File", "Add Fonts…"})
  -- more to come :D
end tell




