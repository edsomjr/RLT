#!/usr/bin/env nu

# Quick launcher of certain commands.
export def main [
	--clear (-c) # Clear the screen.
	--list-directory (-d) # List the files of the current directory.
	--midnight-commander (-m) # Execute the Midnight Commander Shell.
	--editor (-e) # Execute the default editor of the system.
]: nothing -> any {
	if $clear {
		clear
	} else if $list_directory {
		ls ./
	} else if $midnight_commander {
		exec mc
	} else if $editor {
		exec $env.EDITOR
	}
}
