package test_two_pointes

import "core:testing"
import "../../src/two_pointers"

@(test)
test_valid_palindrome :: proc(t: ^testing.T) {
	testing.expect_value(t, two_pointers.is_palindrome("Was it a car or a cat I saw?"), true)
	testing.expect_value(t, two_pointers.is_palindrome("tab a cat"), false)
	testing.expect_value(t, two_pointers.is_palindrome(".,,"), true)
	testing.expect_value(t, two_pointers.is_palindrome("a,,"), true)
	testing.expect_value(t, two_pointers.is_palindrome(",,a"), true)
	testing.expect_value(t, two_pointers.is_palindrome("ab,,a"), true)
}
