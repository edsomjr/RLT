#!/usr/bin/env nu

# Return the greastest number between the three given.
export def main [
	a: int # First number to analyse.
	b: int # Second number to analyse.
	c: int # Third number to analyse.
]: nothing -> int {
	[ $a $b $c ] | sort | last
}
