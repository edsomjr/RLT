#!/usr/bin/env nu

# Given path of a possible file, verify if it exists.
export def main [
	path: string # Path to verify if file exists.
]: nothing -> bool {
	($path | path type) == "file"
}
