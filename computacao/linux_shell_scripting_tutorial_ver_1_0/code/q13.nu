#!/usr/bin/env nu

# Add an asterisk to the argument.
export def main [
	path: string # String to verify.
	start: int # Start of the file.
	end: int # End of the file.
]: nothing -> string {
	if ($path | path type) != "file" {
		error make {
			msg: $'Not a file.'
			label: {
				text: $'($path) is not a valid value.'
				span: (metadata $path).span
			}
		}
	}
	
	open $path | lines | skip $start | first $end
}
