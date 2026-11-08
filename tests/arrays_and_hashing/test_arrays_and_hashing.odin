package test_arrays_and_hashing

import "core:log"
import "core:slice"
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

@(test)
test_two_sum :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)
	testing.expect_value(t, arrays_and_hashing.two_sum({3,4,5,6}, 7), {0,1})
	testing.expect_value(t, arrays_and_hashing.two_sum({4,5,6}, 10), {0,2})
	testing.expect_value(t, arrays_and_hashing.two_sum({5,5}, 10), {0,1})
}

@(test)
test_group_anagrams :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	output1 := arrays_and_hashing.group_anagrams({"act","pots","tops","cat","stop","hat"}, context.temp_allocator)
	output2 := arrays_and_hashing.group_anagrams({"x"}, context.temp_allocator)
	output3 := arrays_and_hashing.group_anagrams({""}, context.temp_allocator)
	defer free_all(context.temp_allocator)

	matches := 0
	groups := [][]string{{"hat"},{"act", "cat"},{"pots", "tops", "stop"}} // order of the words matter
	for group in groups {
		for anagrams in output1 {
			if slice.equal(group, anagrams[:]) {
				matches += 1
			}
		}
	}

	testing.expect(t, matches == len(groups), "Expect output1 to match grouped anagrams")
	testing.expect(t, slice.equal(output2[0][:], []string{"x"}), "Expect output2 to return one group with a letter x")
	testing.expect(t, slice.equal(output3[0][:], []string{""}), "Expect output3 to return a empty string group")
}

@(test)
test_top_k_frequent_elements :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)

	output1 := arrays_and_hashing.top_k_frequent_elements({1,2,2,3,3,3}, 2)
	output2 := arrays_and_hashing.top_k_frequent_elements({7,7}, 1)

	testing.expect(t, slice.equal(output1[:], {3,2}), "Expect output1 to have 3 and 2") // order of ints matter for the test
	testing.expect(t, slice.equal(output2[:], {7}), "Expect output2 to only the int 7")
}

@(test)
test_encode_and_decode_strings :: proc(t: ^testing.T) {
	testing.set_fail_timeout(t, 5 * time.Second)


	input1, output1 := arrays_and_hashing.encode_and_decode([]string{"Hello","World"}), arrays_and_hashing.encode_and_decode("5#Hello5#World")
	input2, output2 := arrays_and_hashing.encode_and_decode([]string{""}), arrays_and_hashing.encode_and_decode("")
	defer {
		delete(output1)
		delete(output2)
	}

	testing.expect_value(t, input1, "5#Hello5#World")
	testing.expect(t, slice.equal(output1[:], {"Hello","World"}), "Expect output1 to match the slice")

	testing.expect_value(t, input2, "")
	testing.expect(t, slice.equal(output2[:], {""}), "Expect output2 to match the empty slice")
}
