package test_arrays_and_hashing

import "core:time"
import "core:testing"
import "../../src/arrays_and_hashing"

@(test)
test_contains_duplicate :: proc (t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, arrays_and_hashing.has_duplicate({1, 2, 3, 3}), true)
	testing.expect_value(t, arrays_and_hashing.has_duplicate({1, 2, 3, 4}), false)
}

@(test)
test_valid_anagram :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, arrays_and_hashing.is_anagram("racecar", "carrace"), true)
	testing.expect_value(t, arrays_and_hashing.is_anagram("jar", "jam"), false)
	testing.expect_value(t, arrays_and_hashing.is_anagram("x", "x"), true)
}
