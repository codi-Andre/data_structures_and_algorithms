package test_binary_search

import "core:testing"
import "../../src/binary_search"

@(test)
test_binary_search :: proc(t: ^testing.T) {
	testing.expect_value(t, binary_search.binary_search({-1,0,2,4,6,8}, 4), 3)
	testing.expect_value(t, binary_search.binary_search({-1,0,2,4,6,8}, 3), -1)
}
