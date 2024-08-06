#!/usr/bin/env nu

# Show the current date, time, username, and current directory.
def main []: nothing -> any {
	{
		date: (date now | into string)
		user: (whoami)
		directory: $env.PWD
	}
}
