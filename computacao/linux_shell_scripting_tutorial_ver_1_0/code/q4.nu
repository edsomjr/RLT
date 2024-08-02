#!/usr/bin/env nu

# Using case (match) keyword to perform basic math operations such as addition (+), subtraction (-), multiplication (x), and division (/).
def main [
	a: int # First operand.
	operator: string # Operator.
	b: int # Second operand.
]: nothing -> int {
	match $operator {
		'+' => { $a + $b },
		'-' => { $a - $b },
		'x' => { $a * $b },
		'/' => { $a / $b },
		_ => { NaN }
	}
}
