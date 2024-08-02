#!/usr/bin/env nu

# Add two numbers and return its sum.
def main [
	a: int # First number to add.
	b: int # Second number to add.
]: nothing -> int {
	$a + $b
}
