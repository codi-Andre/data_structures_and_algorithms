package test_arrays_and_hashing

import "core:testing"
import "../../src/arrays_and_hashing"

@(test)
test_contains_duplicate :: proc (t: ^testing.T) {
	testing.expect_value(t, arrays_and_hashing.has_duplicate({1, 2, 3, 3}), true)
	testing.expect_value(t, arrays_and_hashing.has_duplicate({1, 2, 3, 4}), false)
}
