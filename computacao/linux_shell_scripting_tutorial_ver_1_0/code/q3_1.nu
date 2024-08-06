#!/usr/bin/env nu

# Create the sequence 5, 4, 3, 2, 1 using the command seq.
export def main []: nothing -> list<int> {
	seq 5 -1 1
}
