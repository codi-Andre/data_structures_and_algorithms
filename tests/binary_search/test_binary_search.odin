package test_binary_search

import "../../src/binary_search"
import "core:testing"
import "core:time"

@(test)
test_binary_search :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, binary_search.binary_search({-1, 0, 2, 4, 6, 8}, 4), 3)
	testing.expect_value(t, binary_search.binary_search({-1, 0, 2, 4, 6, 8}, 3), -1)
}
