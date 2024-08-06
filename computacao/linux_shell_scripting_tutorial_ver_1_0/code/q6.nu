#!/usr/bin/env nu

# Reverse the given argument.
export def main [
	arg: string # String to be reversed.
]: nothing -> any {
	$arg | str reverse
}
