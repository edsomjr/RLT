#!/usr/bin/env nu

# Given number, calculate the sum of its digits.
export def main [
	arg: int # Number to sum each digit.
]: nothing -> any {
	$arg | into string | split chars | into int | math sum
}
