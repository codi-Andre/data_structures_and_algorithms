package test_binary_search

import "../../src/binary_search"
import "core:log"
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

@(test)
test_koko_eating_bananas :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, binary_search.min_eating_speed({1, 4, 3, 2}, 9), 2)
	testing.expect_value(t, binary_search.min_eating_speed({25, 10, 23, 4}, 4), 25)
}

@(test)
test_find_minimum_in_rotated_sorted_array :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(
		t,
		binary_search.find_minimum_in_rotated_sorted_array({3, 4, 5, 6, 1, 2}),
		1,
	)
	testing.expect_value(
		t,
		binary_search.find_minimum_in_rotated_sorted_array({4, 5, 0, 1, 2, 3}),
		0,
	)
	testing.expect_value(t, binary_search.find_minimum_in_rotated_sorted_array({4, 5, 6, 7}), 4)
	testing.expect_value(t, binary_search.find_minimum_in_rotated_sorted_array({2, 1}), 1)
}

@(test)
test_search_in_rotated_sorted_array :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, binary_search.search_in_rotated_sorted_array({3, 4, 5, 6, 1, 2}, 1), 4)
	testing.expect_value(
		t,
		binary_search.search_in_rotated_sorted_array({3, 5, 6, 0, 1, 2}, 4),
		-1,
	)
	testing.expect_value(t, binary_search.search_in_rotated_sorted_array({3, 1}, 3), 0)
	testing.expect_value(
		t,
		binary_search.search_in_rotated_sorted_array({4, 5, 6, 7, 0, 1, 2}, 3),
		-1,
	)
	testing.expect_value(t, binary_search.search_in_rotated_sorted_array({1}, 2), -1)
	testing.expect_value(t, binary_search.search_in_rotated_sorted_array({5, 1, 3}, 5), 0)
}

@(test)
test_time_based_key_value_store :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	tm: binary_search.Time_Map
	binary_search.time_map_init(&tm)
	defer binary_search.time_map_destroy(&tm)

	binary_search.time_map_set(&tm, "alice", "happy", 1)
	testing.expect_value(t, binary_search.time_map_get(&tm, "alice", 1), "happy")
	testing.expect_value(t, binary_search.time_map_get(&tm, "alice", 2), "happy")

	binary_search.time_map_set(&tm, "alice", "sad", 3)
	testing.expect_value(t, binary_search.time_map_get(&tm, "alice", 3), "sad")
}

@(test)
test_median_of_two_sorted_arrays :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	testing.expect_value(t, binary_search.median_of_two_sorted_arrays({1, 2}, {3}), 2.0)
	testing.expect_value(t, binary_search.median_of_two_sorted_arrays({1, 3}, {2, 4}), 2.5)
}
