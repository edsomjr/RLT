#!/usr/bin/env nu

# Create the sequence 5, 4, 3, 2, 1 using the while loop.
export def main []: nothing -> list<int> {
	mut result = []

	mut i = 5
	while $i != 0 {
		$result = $result ++ [ $i ]
		$i = $i - 1
	}

	$result
}
