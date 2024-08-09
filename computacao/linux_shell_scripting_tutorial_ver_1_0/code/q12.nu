#!/usr/bin/env nu

# Add an asterisk to the argument.
export def main [
	arg: string # String to verify.
]: nothing -> string {
	if ($arg | str contains '*') {
		"Symbol is not required."
	} else {
		$arg + '*'
	}
}
