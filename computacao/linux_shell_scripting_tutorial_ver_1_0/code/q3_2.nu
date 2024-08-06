#!/usr/bin/env nu

# Create the sequence 5, 4, 3, 2, 1 using the command seq.
export def main [
	max: int # Start of the sequence.
	min: int # End of the sequence.
]: nothing -> list<int> {
	seq $max -1 $min
}
