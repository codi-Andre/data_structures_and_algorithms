package two_pointers

import "core:unicode"

// Time complexity: O(n) | Space complexity: O(1)

is_palindrome :: proc(s: string) -> bool {
	l, r := 0, len(s) - 1
	for l < r {
		for l < r && !unicode.is_digit(rune(s[l])) && !unicode.is_letter(rune(s[l])) do l += 1
		for l < r && !unicode.is_digit(rune(s[r])) && !unicode.is_letter(rune(s[r])) do r -= 1

		if unicode.to_lower(rune(s[l])) != unicode.to_lower(rune(s[r])) do return false
		l += 1
		r -= 1
	}
	return true
}
