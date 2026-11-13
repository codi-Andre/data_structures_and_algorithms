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

@(test)
test_search_a_2d_matrix :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect(
		t,
		binary_search.search_matrix({{1, 2, 4, 8}, {10, 11, 12, 13}, {14, 20, 30, 40}}, 10) ==
		true,
		"Expect to find target number in the 2D matrix",
	)
	testing.expect(
		t,
		binary_search.search_matrix({{1, 2, 4, 8}, {10, 11, 12, 13}, {14, 20, 30, 40}}, 15) ==
		false,
		"Expect to not find target number in the 2D matrix",
	)
}
